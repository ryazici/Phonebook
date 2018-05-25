package com.phonebook.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {

	private static Logger logger=Logger.getLogger(LoggingAspect.class.getClass().getName()) ;

	@Pointcut("execution(* com.phonebook.controller.*.*(..))")
	public void forControllerPackage() {
	}
	
	@Pointcut("execution(* com.phonebook.service.*.*(..))")
	public void forServicePackage()	{
	}
	
	@Pointcut("execution(* com.phonebook.dao.*.*(..))")
	public void forDaoPackage()	{
	}
	
	@Pointcut("forDaoPackage() || forControllerPackage() || forServicePackage()")
	public void forAppFlow() {
	}
	
	@Before("forAppFlow()")
	public void logBefore(JoinPoint joinpoint) {
		
		logger.info(joinpoint.getClass().getName() + " " + joinpoint.getSignature().toShortString() ); 
				
	    logger.info("Method argument/arguments : " );
		for (Object obj: joinpoint.getArgs()) {
			logger.info( obj.toString());
		}
	}
	
	@AfterReturning(pointcut="forAppFlow()",returning="retVal")
	public void logAfterReturning(JoinPoint joinPoint,Object retVal) {
		
		logger.info(joinPoint.getSignature().toShortString() );
	}
	
	
}
