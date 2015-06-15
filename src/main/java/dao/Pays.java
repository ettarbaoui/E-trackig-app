package dao;

// Generated 4 mars 2015 09:46:52 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Pays generated by hbm2java
 */
public class Pays implements java.io.Serializable {

	private Integer idpays;
	private String paysport;
	private Set<Port> ports = new HashSet<Port>(0);

	public Pays() {
	}

	public Pays(String paysport) {
		this.paysport = paysport;
	}

	public Pays(String paysport, Set<Port> ports) {
		this.paysport = paysport;
		this.ports = ports;
	}

	public Integer getIdpays() {
		return this.idpays;
	}

	public void setIdpays(Integer idpays) {
		this.idpays = idpays;
	}

	public String getPaysport() {
		return this.paysport;
	}

	public void setPaysport(String paysport) {
		this.paysport = paysport;
	}

	public Set<Port> getPorts() {
		return this.ports;
	}

	public void setPorts(Set<Port> ports) {
		this.ports = ports;
	}

}