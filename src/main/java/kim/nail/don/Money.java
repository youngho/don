package kim.nail.don;

import java.io.Serializable;

public class Money implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String idOut = "";
	private String usedName = "";
	private String usedDt = "";
	private int totUsedMoney;
	private int cardGgang;

	public String getIdOut() {
		return idOut;
	}

	public void setIdOut(String idOut) {
		this.idOut = idOut;
	}

	public String getUsedName() {
		return usedName;
	}

	public void setUsedName(String usedName) {
		this.usedName = usedName;
	}

	public String getUsedDt() {
		return usedDt;
	}

	public void setUsedDt(String usedDt) {
		this.usedDt = usedDt;
	}

	public int getTotUsedMoney() {
		return totUsedMoney;
	}

	public void setTotUsedMoney(int totUsedMoney) {
		this.totUsedMoney = totUsedMoney;
	}

	public int getCardGgang() {
		return cardGgang;
	}

	public void setCardGgang(int cardGgang) {
		this.cardGgang = cardGgang;
	}

}
