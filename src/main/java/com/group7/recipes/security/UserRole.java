package com.group7.recipes.security;

import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.FetchType;


import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import lombok.Data;


import jakarta.persistence.EnumType;


// @Data
// @Entity
// @Table(name="\"UserRoles\"")
// public class UserRole {
//   @Id
//   @GeneratedValue(strategy = GenerationType.IDENTITY)
//   private Integer id;

//   @Enumerated(EnumType.STRING)
//   //@ManyToOne(fetch=FetchType.LAZY)
//   //@JoinColumn(name="UserRoleType")
//   private UserRoleType name;
// }


@Data
@Entity
@Table(name="\"Roles\"")
public class UserRole {
  @Id
  @Column(name = "roleID", nullable = false)
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int roleId;
  
  @Enumerated(EnumType.STRING)
  @Column(name = "roleName", nullable = false)
  private UserRoleType name;
}


