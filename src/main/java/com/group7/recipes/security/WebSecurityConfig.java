package com.group7.recipes.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;

import org.springframework.security.core.userdetails.User;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;


@Configuration
public class WebSecurityConfig {
	@Autowired
	private UserDetailsServiceImpl userDetailsService;

	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();

		authProvider.setUserDetailsService(userDetailsService);
		authProvider.setPasswordEncoder(passwordEncoder());

		return authProvider;
	}

	@Bean
	public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
		return authConfig.getAuthenticationManager();
	}

	@Bean
	BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.cors().and().csrf().disable()
				.authorizeHttpRequests().requestMatchers(antMatcher("/api/auth/**")).permitAll()
				.requestMatchers(antMatcher("/h2-console/**")).permitAll()
				.requestMatchers(antMatcher("/swagger-ui/**")).permitAll()
				.requestMatchers(antMatcher("/v3/**")).permitAll() // grant some requests on swagger-ui
				.anyRequest().authenticated()
				.and().formLogin();

	// 			http
    //          .authorizeHttpRequests()
    //              .requestMatchers("/**").hasRole("USER")
    //              .and()
    //          .formLogin();
				

	// 	// fix H2 database console: Refused to display ' in a frame because it set
	// 	// 'X-Frame-Options' to 'deny'
		http.headers().frameOptions().sameOrigin();

		http.authenticationProvider(authenticationProvider());
		return http.build();
	}


	// @Bean
    // public InMemoryUserDetailsManager userDetailsService() {
    //     UserDetails user1 = User.withUsername("user1")
    //         .password(passwordEncoder().encode("user1P"))
    //         .roles("USER")
    //         .build();
    //     UserDetails user2 = User.withUsername("user2")
    //         .password(passwordEncoder().encode("user2P"))
    //         .roles("USER")
    //         .build();
    //     UserDetails admin = User.withUsername("admin")
    //         .password(passwordEncoder().encode("adminP"))
    //         .roles("ADMIN")
    //         .build();
    //     return new InMemoryUserDetailsManager(user1, user2, admin);
    // }
}
