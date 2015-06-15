package dao;

// Generated 4 mars 2015 09:46:52 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

import com.mkyong.users.model.User;

/**
 * Transporteur generated by hbm2java
 */
public class Transporteur implements java.io.Serializable {

	private Integer idtransporteur;
	private User user;
	private boolean notification;
	
	private Set<Dossier> dossiers = new HashSet<Dossier>(0);

	public Transporteur() {
	}

	public Integer getIdtransporteur() {
		return idtransporteur;
	}

	public void setIdtransporteur(Integer idtransporteur) {
		this.idtransporteur = idtransporteur;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public boolean isNotification() {
		return notification;
	}

	public void setNotification(boolean notification) {
		this.notification = notification;
	}

	public Set<Dossier> getDossiers() {
		return dossiers;
	}

	public void setDossiers(Set<Dossier> dossiers) {
		this.dossiers = dossiers;
	}

	

}