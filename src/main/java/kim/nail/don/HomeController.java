package kim.nail.don;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		return "test";
	}

	@RequestMapping(value = "/cal1", method = RequestMethod.GET)
	public ModelAndView home2(Locale locale, ModelMap model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		// 메시지 모델에 추가.
		String sMessage = "스프링+아이바티스 첫만남. I Love Spring Framework!";
		model.addAttribute("sMessage", sMessage);

		// 날짜 부분 출력 및 모델에 추가
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		// mybatis를 활용 db조회 모델에 추가
		HashMap<String, String> executeQuery = new HashMap<String, String>();
		executeQuery.put("name", "shin");
		List<HashMap<String, String>> resultSet = sqlSession.selectList("userControlMapper.selectMoneyOneMonth", executeQuery);
		model.addAttribute("resultSet", resultSet);

		System.out.print(model.toString());
		ModelAndView mav = new ModelAndView("mon");

		// view에 모델 넘겨 넘겨
		mav.addAllObjects(model);

		// ModelAndView mav = new ModelAndView("home", "model", model);
		return mav;
	}

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public ModelAndView inputForm(@ModelAttribute("moneyVo") Money money, Model model) {

		List<String> cardList = sqlSession.selectList("retireveCardNum");
		model.addAttribute("cardList", cardList);
		ModelAndView imodel = new ModelAndView();
		imodel.setViewName("input");
		return imodel;
	}

	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public ModelAndView handle(@ModelAttribute Money iMoney, Model model) throws Exception {

		logger.info(iMoney.getUsedName());
		try {
			sqlSession.insert("insertMoney", iMoney);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView("redirect:/cal");
	}

	@RequestMapping(value = "/cal", method = RequestMethod.GET)
	public ModelAndView carendar(Locale locale, ModelMap model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		// 메시지 모델에 추가.
		String sMessage = "스프링+아이바티스 첫만남. I Love Spring Framework!";
		model.addAttribute("sMessage", sMessage);

		// 날짜 부분 출력 및 모델에 추가
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		// mybatis를 활용 db조회 모델에 추가
		HashMap<String, String> executeQuery = new HashMap<String, String>();
		executeQuery.put("name", "shin");
		List<HashMap<String, String>> resultSet = sqlSession.selectList("userControlMapper.R01", executeQuery);
		model.addAttribute("resultSet", resultSet);

		List<HashMap<String, String>> resultSet2 = sqlSession.selectList("userControlMapper.selectMoney", executeQuery);
		model.addAttribute("resultSet2", resultSet2);

		System.out.print(model.toString());
		ModelAndView mav = new ModelAndView("cal");

		// view에 모델 넘겨 넘겨
		mav.addAllObjects(model);

		// ModelAndView mav = new ModelAndView("home", "model", model);
		return mav;
	}

}
