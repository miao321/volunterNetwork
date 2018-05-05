package com.xxx.volunterNetwork.shiro;


import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.xxx.volunterNetwork.domain.Role;
import com.xxx.volunterNetwork.domain.User;
import com.xxx.volunterNetwork.service.ILoginService;
import com.xxx.volunterNetwork.service.IRoleService;
import com.xxx.volunterNetwork.service.IUserService;

/**
 * 
 * @author miao
 * @date 2018年1月20日上午10:33:52
 *
 */

public class MyRealm extends AuthorizingRealm{
	@Autowired
	private ILoginService loginService;
	
	@Autowired
	private IRoleService roleService;
	@Autowired
	private IUserService userService;
	public String getName() {
		return "myRealm";
	}
	
	@Override
	public boolean supports(AuthenticationToken token) {
		return token instanceof UsernamePasswordToken;
	}
	
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		//获取输入的的身份信息
		String userName = (String) token.getPrincipal();
		//从数据库中去的传入的信息		
		//模拟差不到这个用户
		User user = loginService.findUser(userName);	
		if(user == null) {
			return null;
		}
		String password = user.getPassword();	
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(userName, password, this.getName());
		return simpleAuthenticationInfo;
	}

	@SuppressWarnings("unchecked")
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		
		String userName = (String) principal.fromRealm(getName()).iterator().next();
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		if(userName != null) {
			Set<Role> role = userService.getRoleByUserName(userName);
			for (Role role2 : role) {
				info.addRole(role2.getRoleName());
			}
			List<String> permissions = userService.getPermissionsByUserName(userName);
			if (permissions != null && !permissions.isEmpty()) {
				for(String each : permissions) {
					info.addStringPermission(each);
					
					System.out.println(each);
				}
			}
		}
		System.out.println("++++++++:"+info);
		return info;
	}
	
/*	   @Override  
	    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {  
	        //获取登录时输入的用户名    
	        String loginName=(String) principalCollection.fromRealm(getName()).iterator().next();  
	        //到数据库获取此用户  
	        User user=userService.findUser(loginName);  
	        if(user!=null){  
	            //权限信息对象info,用来存放查出的用户的所有的角色（role）及权限（permission）    
	            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();  
	            //用户的角色集合  
	            
	            info.setRoles(user.getRolesName());  
	            //用户的角色对应的所有权限，如果只使用角色定义访问权限  
	            Collection<Role> roleList=user.getRoleList();  
	            for (Role role : roleList) {  
	                info.addStringPermissions(role.getPermissionsName());  
	            }  
	            return info;  
	        }  
	        return null;  
	    }  */
	  
	/*@SuppressWarnings("unchecked")
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		
		String userName = (String) principal.fromRealm(getName()).iterator().next();
		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		if(userName != null) {
			List<User> userRoles = userService.getRoleByUserName(userName);
			for (UserRole userRole : userRoles) {
				info.addRole(userRole.getRole().getRoleName());
			}
			List<String> permissions = userService.getPermissionsByUserName(userName);
			if (permissions != null && !permissions.isEmpty()) {
				for(String each : permissions) {
					info.addStringPermission(each);
					
					System.out.println(each);
				}
			}
		}
	}
	    *//** 
	     * 获取身份验证相关信息 
	     *//*  
	    @Override  
	    protected AuthenticationInfo doGetAuthenticationInfo(  
	            AuthenticationToken authenticationToken) throws AuthenticationException {  
	        //UsernamePasswordToken对象用来存放提交的登录信息    
	        UsernamePasswordToken token=(UsernamePasswordToken) authenticationToken;  
	        //查出是否有此用户    
	        User user=userService.findUser(token.getUsername());  
	        if(user!=null){  
	            //若存在，将此用户存放到登录认证info中    
	            return new SimpleAuthenticationInfo(user.getUserName(), user.getPassword(), getName());  
	        }  
	        return null;  
	    }  
	  
	
	*/
	
	
	
/*	@SuppressWarnings("unchecked")
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {		
		String userName = (String) principal.fromRealm(getName()).iterator().next();		
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		if(userName != null) {
			List<UserRole> userRoles = userService.getRoleByUserName(userName);
			for (UserRole userRole : userRoles) {
				info.addRole(userRole.getRole().getRoleName());
			}
			List<String> permissions = userService.getPermissionsByUserName(userName);
			if (permissions != null && !permissions.isEmpty()) {
				for(String each : permissions) {
					info.addStringPermission(each);
					
					System.out.println(each);
				}
			}
		}
		System.out.println("++++++++:"+info);
		return info;
	}*/
		
}
