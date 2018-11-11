package com.example.ms;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@SpringBootApplication


/* MapperScan 어노테이션을 통해 탐색할 Mapper 인터페이스의 경로를 설정해 주고,
 * sqlSessionFactory를 이용해서 Mapper xml과 맵핑해준다.
*/

//변경 전 
//@MapperScan(value={"com.example.ms.Mapper"})

//변경 후 
@MapperScan(value={"com.example.ms.Service.TodoService"})
// -> Service interface 위치 지정 

public class WinterCodingApplication extends WebMvcConfigurerAdapter {
	
	public static void main(String[] args) {
		SpringApplication.run(WinterCodingApplication.class, args);
	}
	
	 /*
    * Mybatis SqlSessionFactory 설정
    */
	
	
   @Bean
   public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
       SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();        
       sessionFactory.setDataSource(dataSource);
       
       //** 변경 후 ** // -> XML 위치 지정 
       Resource[] arrResource = new PathMatchingResourcePatternResolver()
               .getResources("classpath:com/example/ms/TodoMapperXML/TodoMapper.xml");
       sessionFactory.setMapperLocations(arrResource);
       sessionFactory.getObject().getConfiguration().setMapUnderscoreToCamelCase(true);
       
       
       // **  ** //
       return sessionFactory.getObject();
   }
   
   
   @Bean
   public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory){
	   return new SqlSessionTemplate(sqlSessionFactory);
   }
		
}
