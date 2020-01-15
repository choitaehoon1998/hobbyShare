package com.hobbyshare.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.annotation.Resource;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hobbyshare.domain.GameMatching;
import com.hobbyshare.domain.Member;
import com.hobbyshare.domain.Summoner;
import com.hobbyshare.service.GameMatchingService;
import com.hobbyshare.service.SummonerService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller

@RequestMapping("/game")
@SessionAttributes("loginUser")

public class GameController {

  @Resource
  private SummonerService summonerService;
  @Resource
  private GameMatchingService gameMatchingService;
  
    @GetMapping("start")
    public String start(@ModelAttribute("loginUser") Member loginUser, Model model) throws Exception {
      if (summonerService.get(loginUser.getMemberNo()) == null) {
        return "redirect:summoner";
      } else {
        return "redirect:main";
      }
    }

  @GetMapping("main")
  public void main(@ModelAttribute("loginUser") Member loginUser, Model model) throws Exception {
      model.addAttribute("summoner", summonerService.get(loginUser.getMemberNo()));
      model.addAttribute("gameMatchings", gameMatchingService.list());
  }

  @GetMapping("summoner")
  public void summoner(@ModelAttribute("loginUser") Member loginUser, Model model) {
    Member member = new Member();
    member.setMemberNo(loginUser.getMemberNo());
    model.addAttribute("member", member);
  }

  @PostMapping("addSummoner")
  public String addSummoner(Summoner summoner, int no, String summonerName) throws Exception {

    BufferedReader br = null;
    String SummonerName = summonerName;
    String API_KEY = "RGAPI-d1469fe1-4792-4d5b-954c-7f873dc183ca";
    try {
      String urlstr = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + SummonerName + "?api_key="
          + API_KEY;
      URL url = new URL(urlstr);
      HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
      urlconnection.setRequestMethod("GET");
      br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8")); // 여기에 문자열을 받아와라.
      String result = "";
      String line;
      while ((line = br.readLine()) != null) { // 그 받아온 문자열을 계속 br에서 줄단위로 받고 출력하겠다.
        result = result + line;
      }
      JsonParser jsonParser = new JsonParser();
      JsonObject k = (JsonObject) jsonParser.parse(result);
      int profileIconId = k.get("profileIconId").getAsInt();
      String name = k.get("name").getAsString();
      String puuid = k.get("puuid").getAsString();
      int summonerLevel = k.get("summonerLevel").getAsInt();
      int revisionDate = k.get("revisionDate").getAsInt();
      String id = k.get("id").getAsString();
      String accountId = k.get("accountId").getAsString();
      System.out.println(profileIconId + name + puuid + summonerLevel + revisionDate + id + accountId);
      // temp = new Summoner(profileIconId, name, puuid, summonerLevel, revisionDate, id, accountId);
      String profileIcon = "//ddragon.leagueoflegends.com/cdn/9.24.2/img/profileicon/" + profileIconId +".png";
      summoner.setMemberNo(no);
      summoner.setId(id);
      summoner.setSummonerLevel(summonerLevel);
      summoner.setName(name);
      summoner.setProfileIcon(profileIcon);

    } catch (Exception e) {
      System.out.println(e.getMessage());
      System.out.println("존재하지 않는 소환사 이름");
      return "redirect:summoner";
    }
    summonerService.insert(summoner);
    return "redirect:main";
  }

  @PostMapping("updateSummoner")
  public String updateSummoner(Summoner summoner) throws Exception {
    Summoner tempSummoner = summonerService.get(summoner.getMemberNo());
    BufferedReader br = null;
    String SummonerId = tempSummoner.getId();
    String API_KEY = "RGAPI-d1469fe1-4792-4d5b-954c-7f873dc183ca";
    try {
      String urlstr = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/" + SummonerId + "?api_key="
          + API_KEY;
      URL url = new URL(urlstr);
      HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
      urlconnection.setRequestMethod("GET");
      br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "UTF-8")); // 여기에 문자열을 받아와라.
      String result = "";
      String line;
      while ((line = br.readLine()) != null) { // 그 받아온 문자열을 계속 br에서 줄단위로 받고 출력하겠다.
        result = result + line;
        System.out.println("update ========> " + result);
      }
      JsonParser jsonParser = new JsonParser();
      JsonArray arr = (JsonArray) jsonParser.parse(result);
      JsonObject k = (JsonObject) arr.get(0);

      String tier = k.get("tier").getAsString();
      String rank = k.get("rank").getAsString();
      int leaguePoints = k.get("leaguePoints").getAsInt();
      int wins = k.get("wins").getAsInt();
      int losses = k.get("losses").getAsInt();

      System.out.println("======== gSON : " + tier + rank + wins + losses + leaguePoints);

      summoner.setTier(tier);
      summoner.setRank(rank);
      summoner.setLeaguePoints(leaguePoints);
      summoner.setWins(wins);
      summoner.setLosses(losses);

    } catch (Exception e) {
      System.out.println(e.getMessage());
    }
    summonerService.update(summoner);
    return "redirect:main";
  }

  @PostMapping("addGameMatching")
  public String addGameMatching(GameMatching gameMatching) throws Exception {
    System.out.println(gameMatching);
  gameMatchingService.insert(gameMatching);
  return "redirect:main";
  }

  @GetMapping("summonerNameCheck")
@ResponseBody
public int summonerNameCheck(String summonerName) throws Exception{
  return summonerService.summonerNameCheck(summonerName);
}

  // @PostMapping("add")
  // public String add(Member member) throws Exception {
  // memberService.insert(member);
  // return "redirect:result";
  // }

  // @GetMapping("nicknameCheck")
  // @ResponseBody
  // public int nicknameCheck(String nickname) throws Exception{
  // return memberService.nicknameCheck(nickname);
  // }

  // @GetMapping("emailCheck")
  // @ResponseBody
  // public int emailCheck(String email) throws Exception{
  // return memberService.emailCheck(email);
  // }

  // @GetMapping("telCheck")
  // @ResponseBody
  // public int telCheck(String tel) throws Exception{
  // return memberService.telCheck(tel);
  // }

  // @GetMapping("form")
  // public void form() {
  // }
  // @PostMapping("add")
  // public String add(Member member) throws Exception {
  // memberService.insert(member);
  // return "redirect:list";
  // }

  // @GetMapping("detail")
  // public void detail(Model model, @ModelAttribute("loginUser") Member
  // loginUser) throws Exception {
  // Member member = memberService.get(loginUser.getMemberNo());
  // model.addAttribute("member", member);
  // }

  // @PostMapping("update")
  // public String update(Member member, MultipartFile file) throws Exception {
  // member.setPhoto(writeFile(file));
  // memberService.update(member);
  // return "redirect:myprofile";
  // }

  // @GetMapping("delete")
  // public String delete(int no) throws Exception {
  // memberService.delete(no);
  // return "redirect:/app/auth/logout";
  // }

}