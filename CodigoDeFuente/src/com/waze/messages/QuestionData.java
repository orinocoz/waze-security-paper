// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.content.Context;
import android.content.SharedPreferences;
import com.waze.AppService;
import com.waze.location.Position;

public class QuestionData
{

    public String ActionText1;
    public String ActionText2;
    public int AnswerType;
    public String IdText1;
    public String IdText2;
    public String QuestionID;
    public String SubText1;
    public String SubText2;
    public String Text;
    public String defaultAction;

    public QuestionData()
    {
        Text = null;
        defaultAction = null;
        SubText1 = null;
        SubText2 = null;
        ActionText1 = null;
        ActionText2 = null;
        QuestionID = null;
        IdText1 = null;
        IdText2 = null;
    }

    public static QuestionData GetQuestionData(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.waze.question", 0);
        QuestionData questiondata = new QuestionData();
        questiondata.Text = sharedpreferences.getString("Text", "");
        questiondata.SubText1 = sharedpreferences.getString("SubText1", "");
        questiondata.IdText1 = sharedpreferences.getString("IdText1", "");
        questiondata.IdText2 = sharedpreferences.getString("IdText2", "");
        questiondata.QuestionID = sharedpreferences.getString("QuestionID", "");
        questiondata.SubText2 = sharedpreferences.getString("SubText2", "");
        questiondata.ActionText1 = sharedpreferences.getString("ActionText1", "");
        questiondata.ActionText2 = sharedpreferences.getString("ActionText2", "");
        questiondata.AnswerType = sharedpreferences.getInt("Type", -1);
        return questiondata;
    }

    public static String ReadKeyData(String s, Context context)
    {
        return context.getSharedPreferences("com.waze.Keys", 0).getString(s, "");
    }

    public static Position ReadParking(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.waze.parked", 0);
        Position position = new Position();
        position.longitude = Double.parseDouble(sharedpreferences.getString("lon", "-1"));
        position.latitude = Double.parseDouble(sharedpreferences.getString("lat", "-1"));
        sharedpreferences.edit().putString("lon", "-1").apply();
        sharedpreferences.edit().putString("lat", "-1").apply();
        sharedpreferences.edit().commit();
        return position;
    }

    public static void ResetQuestionData(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.waze.question", 0);
        sharedpreferences.edit().putString("Text", "").apply();
        sharedpreferences.edit().putString("SubText1", "").apply();
        sharedpreferences.edit().putString("ActionText1", "").apply();
        sharedpreferences.edit().putString("SubText2", "").apply();
        sharedpreferences.edit().putString("ActionText2", "").apply();
        sharedpreferences.edit().putInt("Type", -1).apply();
        sharedpreferences.edit().putString("IdText1", "").apply();
        sharedpreferences.edit().putString("IdText2", "").apply();
        sharedpreferences.edit().putString("QuestionID", "").apply();
        sharedpreferences.edit().commit();
    }

    public static void SaveQuestionData(QuestionData questiondata)
    {
        SharedPreferences sharedpreferences = AppService.getAppContext().getSharedPreferences("com.waze.question", 0);
        sharedpreferences.edit().putInt("Type", questiondata.AnswerType).apply();
        if (questiondata.Text != null)
        {
            sharedpreferences.edit().putString("Text", questiondata.Text).apply();
        } else
        {
            sharedpreferences.edit().putString("Text", "").apply();
        }
        if (questiondata.QuestionID != null)
        {
            sharedpreferences.edit().putString("QuestionID", questiondata.QuestionID).apply();
        } else
        {
            sharedpreferences.edit().putString("QuestionID", "").apply();
        }
        if (questiondata.SubText1 != null)
        {
            sharedpreferences.edit().putString("SubText1", questiondata.SubText1).apply();
            sharedpreferences.edit().putString("ActionText1", questiondata.ActionText1).apply();
            sharedpreferences.edit().putString("IdText1", questiondata.IdText1).apply();
        } else
        {
            sharedpreferences.edit().putString("SubText1", "").apply();
            sharedpreferences.edit().putString("ActionText1", "").apply();
            sharedpreferences.edit().putString("IdText1", "").apply();
        }
        if (questiondata.SubText2 != null)
        {
            sharedpreferences.edit().putString("SubText2", questiondata.SubText2).apply();
            sharedpreferences.edit().putString("ActionText2", questiondata.ActionText2).apply();
            sharedpreferences.edit().putString("IdText2", questiondata.IdText2).apply();
        } else
        {
            sharedpreferences.edit().putString("SubText2", "").apply();
            sharedpreferences.edit().putString("ActionText2", "").apply();
            sharedpreferences.edit().putString("IdText2", "").apply();
        }
        sharedpreferences.edit().commit();
    }

    public static void SetParking(Context context, double d, double d1)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.waze.parked", 0);
        sharedpreferences.edit().putString("lon", Double.toString(d)).apply();
        sharedpreferences.edit().putString("lat", Double.toString(d1)).apply();
        sharedpreferences.edit().commit();
    }
}
