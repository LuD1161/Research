.class public final LG2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LY2/j$c;
.implements LU2/a;


# instance fields
.field public c:Landroid/app/Activity;

.field public d:LY2/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LY2/i;LY2/j$d;)V
    .locals 2

    const-string v0, "asAnotherTask"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "display"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p1, "android.settings.DISPLAY_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, p2, v0}, LG2/a;->e(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "appLocale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, p2, v0}, LG2/a;->d(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "lockAndPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    :cond_6
    const-string p1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "hotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, p2, v0}, LG2/a;->g(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "internalStorage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string p1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "security"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string p1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, p2, v0}, LG2/a;->h(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_a
    const-string v1, "sound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_1

    :cond_b
    const-string p1, "android.settings.SOUND_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_b
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, p2, v0}, LG2/a;->c(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_c
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_1

    :cond_d
    const-string p1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_d
    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_1

    :cond_e
    const-string p1, "android.settings.DATE_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_e
    const-string v1, "vpn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0, p2, v0}, LG2/a;->k(LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_f
    const-string v1, "nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_1

    :cond_10
    const-string p1, "android.settings.NFC_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_10
    const-string v1, "apn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string p1, "android.settings.APN_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto/16 :goto_2

    :sswitch_11
    const-string v1, "developer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string p1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_12
    const-string v1, "dataRoaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_1

    :cond_13
    const-string p1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_13
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1

    :cond_14
    const-string p1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_14
    const-string v1, "wireless"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1

    :cond_15
    const-string p1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_15
    const-string v1, "device"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_1

    :cond_16
    const-string p1, "android.settings.DEVICE_INFO_SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_16
    const-string v1, "generalSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_1

    :cond_17
    const-string p1, "android.settings.SETTINGS"

    invoke-virtual {p0, p1, p2, v0}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    goto :goto_2

    :sswitch_17
    const-string v1, "batteryOptimization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_1

    :cond_18
    invoke-virtual {p0, p2, v0}, LG2/a;->f(LY2/j$d;Z)V

    goto :goto_2

    :cond_19
    :goto_1
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79e817e6 -> :sswitch_17
        -0x72ed3ed5 -> :sswitch_16
        -0x4f94e1aa -> :sswitch_15
        -0x3b9b7862 -> :sswitch_14
        -0xcb43eb2 -> :sswitch_13
        -0x6cf0ef1 -> :sswitch_12
        -0x4cf1836 -> :sswitch_11
        0x17a1f -> :sswitch_10
        0x1a9ab -> :sswitch_f
        0x1c8f4 -> :sswitch_e
        0x2eefae -> :sswitch_d
        0x37af15 -> :sswitch_c
        0x5897a51 -> :sswitch_b
        0x688c90f -> :sswitch_a
        0x237a88eb -> :sswitch_9
        0x38927740 -> :sswitch_8
        0x3dfc74fe -> :sswitch_7
        0x418a9ecf -> :sswitch_6
        0x48665b67 -> :sswitch_5
        0x4d2697db -> :sswitch_4
        0x5582bc23 -> :sswitch_3
        0x63a518c2 -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(LY2/i;LY2/j$d;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_6

    const-string v1, "type"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "internetConnectivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.WIFI"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.NFC"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.VOLUME"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-interface {p2}, LY2/j$d;->c()V

    goto :goto_1

    :cond_6
    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x305518e6 -> :sswitch_3
        0x1a9ab -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x140ab98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(LY2/j$d;Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "package"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, p1, p2}, LG2/a;->j(Landroid/content/Intent;LY2/j$d;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, LG2/a;->e(LY2/j$d;Z)V

    :goto_1
    return-void
.end method

.method public final d(LY2/j$d;Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_LOCALE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object p2, p0, LG2/a;->c:Landroid/app/Activity;

    if-eqz p2, :cond_2

    const-string v1, "package"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-interface {p1, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(LY2/j$d;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, LG2/a;->c:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v2, "package"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(LY2/j$d;Z)V
    .locals 1

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-virtual {p0, v0, p1, p2}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    return-void
.end method

.method public final g(LY2/j$d;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setClassName(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, LG2/a;->j(Landroid/content/Intent;LY2/j$d;Z)V

    return-void
.end method

.method public final h(LY2/j$d;Z)V
    .locals 4

    iget-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "putExtra(...)"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p2, 0x0

    invoke-interface {p1, p2}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/String;LY2/j$d;Z)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, LG2/a;->c:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p2, p3}, LG2/a;->e(LY2/j$d;Z)V

    :goto_0
    return-void
.end method

.method public final j(Landroid/content/Intent;LY2/j$d;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p2, p3}, LG2/a;->e(LY2/j$d;Z)V

    :goto_0
    return-void
.end method

.method public final k(LY2/j$d;Z)V
    .locals 1

    const-string v0, "android.settings.VPN_SETTINGS"

    invoke-virtual {p0, v0, p1, p2}, LG2/a;->i(Ljava/lang/String;LY2/j$d;Z)V

    return-void
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, LG2/a;->c:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LY2/j;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const-string v1, "com.spencerccf.app_settings/methods"

    invoke-direct {v0, p1, v1}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LG2/a;->d:LY2/j;

    invoke-virtual {v0, p0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LG2/a;->c:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LG2/a;->d:LY2/j;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    const-string v1, "openSettings"

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, LG2/a;->a(LY2/i;LY2/j$d;)V

    goto :goto_0

    :cond_0
    const-string v1, "openSettingsPanel"

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, LG2/a;->b(LY2/i;LY2/j$d;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, LG2/a;->c:Landroid/app/Activity;

    return-void
.end method
