package com.qrsx.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

public class Dbhelper {
	private static final int BUFFER_SIZE = 16 * 1024 ;
	public static int getPrimaryKey(){
		
		
		Random r=new Random();
		
		int a=r.nextInt();
		if(a<0)
			a=-a;
		
		return a;
		
	}
	/*第一个是源文件
	 * 第二个是目标文件
                  都是完整路径加文件名
	 */
	public static void copy(File src, File dst) {
		try {
		InputStream in = null ;
		OutputStream out = null ;
		try {
		in = new BufferedInputStream( new FileInputStream(src), BUFFER_SIZE);
		out = new BufferedOutputStream( new FileOutputStream(dst), BUFFER_SIZE);
		byte [] buffer = new byte [BUFFER_SIZE];
		while (in.read(buffer) > 0 ) {
		out.write(buffer);
		}
		} finally {
		if ( null != in) {
		in.close();
		}
		if ( null != out) {
		out.close();
		}
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
	
	
	
	
	
}
