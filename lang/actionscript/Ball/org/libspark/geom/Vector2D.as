/*
 * Copyright(c) 2006 the Spark project.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
 * either express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */

package org.libspark.geom
{
    /**
     * 2次元ベクトル演算
     * 
     * Original code by yaneurao (from yaneSDK4D)
     */
    public class Vector2D
    {
    	/**
    	 * ベクトルのx成分
    	 */
    	public var x:Number = 0.0;
    	
    	/**
    	 * ベクトルのy成分
    	 */
    	public var y:Number = 0.0;
    	
    	/**
    	 * 新しいVector2Dクラスのインスタンスを作成します。
    	 * 
    	 * @param   x ベクトルのx成分
    	 * @param   y ベクトルのy成分
    	 */
    	public function Vector2D(x:Number, y:Number)
    	{
    		this.x = x;
    		this.y = y;
    	}
    	
    	/**
    	 * x, yのセッター
    	 * 
    	 * @param   x ベクトルのx成分
    	 * @param   y ベクトルのy成分
    	 */
    	public function set(x:Number, y:Number):void
    	{
    		this.x = x;
    		this.y = y;
    	}
    	
    	/**
    	 * x, yのセッター
    	 * 
    	 * @param   v コピー元のベクトル
    	 */
    	public function setFrom(v:Vector2D):void
    	{
    		x = v.x;
    		y = v.y;
    	}
    	
    	/**
    	 * 指定されたベクトルとの内積を求める
    	 * 
    	 * @param   v 対象ベクトル
    	 * @return   内積
    	 */
    	public function dotProduct(v:Vector2D):Number
    	{
    		return x * v.x + y * v.y;
    	}
    	
    	/**
    	 * 指定されたベクトルとの外積を求める
    	 * 
    	 * @param   v 対象ベクトル
    	 * @return   外積
    	 */
    	public function crossProduct(v:Vector2D):Number
    	{
    		return x * v.y - y * v.x;
    	}
    	
    	/**
    	 * 他のベクトルを加算する
    	 * 
    	 * @param   v 加算するベクトル
    	 */
    	public function add(v:Vector2D):void
    	{
    		x += v.x;
    		y += v.y;
    	}
    	
    	/**
    	 * 他のベクトルを減算する
    	 * 
    	 * @param   v  減算するベクトル
    	 */
    	public function sub(v:Vector2D):void
    	{
    		x -= v.x;
    		y -= v.y;
    	}
    	
    	/**
    	 * スカラー値を乗算する
    	 * 
    	 * @param   n 乗算するスカラー値
    	 */
    	public function mul(n:Number):void
    	{
    		x *= n;
    		y *= n;
    	}
    	
    	/**
    	 * スカラー値で除算する
    	 * 
    	 * @param   n 除算するスカラー値
    	 */
    	public function div(n:Number):void
    	{
    		x /= n;
    		y /= n;
    	}
    	
    	/**
    	 * 絶対値を求める
    	 * 
    	 * @return 絶対値
    	 */
    	public function size():Number
    	{
    		return Math.sqrt(x * x + y * y);
    	}
    	
    	/**
    	 * 絶対値の二乗を求める（比較ならこちらで充分。sqrtが無い分高速）
    	 * 
    	 * @return 絶対値の二乗
    	 */
    	public function size2():Number
    	{
    		return (x * x + y * y);
    	}
    	
    	/**
    	 * 近似による距離（絶対値）の算出。sqrtを使っていない分速い。
    	 * 
    	 * @param   v 比較するベクトル
    	 * @return   距離（絶対値）
    	 */
    	public function dist(v:Vector2D):Number
    	{
    		var ax:Number = Math.abs(x - v.x);
    		var ay:Number = Math.abs(y - v.y);
    		if (ax > ay) {
    			return ax + ay / 2;
    		}
            else {
    			return ay + ax / 2;
    		}
    	}
    	
    	/**
    	 * ふたつのベクトルが等しいか返す
    	 * 
    	 * @param   v 比較するベクトル
    	 * @return   ふたつのベクトルが等しければtrue, そうでなければfalse
    	 */
    	public function equals(v:Vector2D):Boolean
    	{
    		return (x == v.x) && (y == v.y);
    	}
    	
    	/**
    	 * このベクトルの文字列表現を返す
    	 * 
    	 * @return   このベクトルの文字列表現。"(x, y)"の形式。
    	 */
    	public function toString():String
    	{
    		return "(" + x + ", " + y + ")";
    	}
    }
}