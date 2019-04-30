package com.example.demo;

/*
 * public class Single {
 * 
 * 
 * private Proto proto;
 * 
 * public Proto getProto() { return proto; }
 * 
 * public void setProto(Proto proto) { this.proto = proto; }
 * 
 * public Single() { System.out.println("We are in singleton bean...!"); }
 * 
 * }
 */


  public abstract class Single {
  
  public Single() { System.out.println("We are in singleton bean...!"); }
  
  public abstract Proto getProto();
  
  }
 