package com.example.music_player

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.RemoteViews;

class MusicWidget: AppWidgetProvider() {

    override fun onUpdate{
        context:  Context?,
        AppWidgetManager: AppWidgetManager?,
        appwidgetIds: IntArray?
    } {
        if(appwidgetIds != null){
            for (appwidgetId in appwidgetIds){
                updateAppWidget(context , AppWidgetManager , appwidgetId)
            }
        }
    }
}

internal fun updateAppWidget(context: Context?,
     appWidgetManager: AppWidgetManager?,
    appWidgetId: Int) {

    val widgetText = context?.getString(R.string.appwidget_text)
    val views = RemoteViews(context?.packageName, R.layout.music_widget)

    val intent = Intent(Intent.ACTION_VIEW, Uri.parse("app://music_player/play"))

    val pendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_IMMUTABLE)
    views.setOnClickPendingIntent(R.id.button_play_pause, pendingIntent)

    appWidgetManager?.updateAppWidget(appWidgetId, views)
}