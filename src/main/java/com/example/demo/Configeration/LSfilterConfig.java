package com.example.demo.Configeration;


import com.example.demo.Filters.LoginSecurityFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class LSfilterConfig {



    @Bean
    public FilterRegistrationBean<LoginSecurityFilter> LSF(){
        FilterRegistrationBean<LoginSecurityFilter> myFilter = new FilterRegistrationBean<>();
        myFilter.setFilter(new LoginSecurityFilter());
        myFilter.addUrlPatterns("/user/*");
        return myFilter;
    }


}
