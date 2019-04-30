package com.example.demo;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class CollectionsPojo {
	
	private List stateList;
	private Set stateSet;
	private Map stateMap;
	private Properties stateProp;
	
	public List getStateList() {
		return stateList;
	}
	public void setStateList(List stateList) {
		this.stateList = stateList;
	}
	public Set getStateSet() {
		return stateSet;
	}
	public void setStateSet(Set stateSet) {
		this.stateSet = stateSet;
	}
	public Map getStateMap() {
		return stateMap;
	}
	public void setStateMap(Map stateMap) {
		this.stateMap = stateMap;
	}
	public Properties getStateProp() {
		return stateProp;
	}
	public void setStateProp(Properties stateProp) {
		this.stateProp = stateProp;
	}
	
	public void dispData() {
		System.out.println("List :: "+getStateList());
		System.out.println("Set :: "+getStateSet());
		System.out.println("Map :: "+getStateMap());
		System.out.println("Properties :: "+getStateProp());
	}
}
