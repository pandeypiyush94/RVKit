<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical">

    <TextView
          android:id="@+id/tv_title"
          android:layout_width="wrap_content"
          android:layout_height="wrap_content"
          android:layout_marginStart="20dp"
          android:layout_marginEnd="20dp"
          android:layout_marginTop="20dp"
          android:textSize="16sp"
          android:fontFamily="sans-serif-medium"
          android:text="@string/app_name" />

      <TextView
          android:id="@+id/tv_msg"
          android:layout_width="wrap_content"
          android:layout_height="wrap_content"
          android:layout_marginStart="20dp"
          android:layout_marginEnd="20dp"
          android:layout_marginBottom="20dp"
          android:layout_marginTop="4dp"
          android:fontFamily="sans-serif"
          android:text="@string/app_name" />

    <View
        android:layout_width="match_parent"
        android:layout_height="1dp"
        android:layout_marginHorizontal="20dp"
        android:background="#eeeeee"/>
</LinearLayout>
