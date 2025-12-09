.class public Lorg/cdot/diu/main/SathiMainActivity;
.super LN2/g;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public M:Landroid/content/BroadcastReceiver;

.field public N:Landroid/content/BroadcastReceiver;

.field public O:Z

.field public P:Z

.field public Q:Landroid/content/BroadcastReceiver;

.field public h:LY2/j$d;

.field public final i:Ljava/lang/String;

.field public j:LY2/j;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LN2/g;-><init>()V

    const-string v0, "org.cdot.diu.event"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->i:Ljava/lang/String;

    const-string v0, "clins.sathismschannel"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->k:Ljava/lang/String;

    const-string v0, "clins.sendsms"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->l:Ljava/lang/String;

    const-string v0, "clins.smssent"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->m:Ljava/lang/String;

    const-string v0, "clins.smsdeliver"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->n:Ljava/lang/String;

    const-string v0, "clins.uniqueid"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->o:Ljava/lang/String;

    const-string v0, "clins.permission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->p:Ljava/lang/String;

    const-string v0, "clins.permissionstatus"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->q:Ljava/lang/String;

    const-string v0, "clins.getsentstatus"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->r:Ljava/lang/String;

    const-string v0, "clins.getdeliverystatus"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->s:Ljava/lang/String;

    const-string v0, "clins.rooteddevice"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->t:Ljava/lang/String;

    const-string v0, "clins.simcardavailability"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->u:Ljava/lang/String;

    const-string v0, "SMS_SENT"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->v:Ljava/lang/String;

    const-string v0, "SMS_DELIVERED"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->w:Ljava/lang/String;

    const-string v0, "clins.subscriptioninfo"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->x:Ljava/lang/String;

    const-string v0, "clins.phoneaccountinfo"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->y:Ljava/lang/String;

    const-string v0, "clins.smslog"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->z:Ljava/lang/String;

    const-string v0, "clins.calllog"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->A:Ljava/lang/String;

    const-string v0, "clins.chakshusmspermission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->B:Ljava/lang/String;

    const-string v0, "clins.chakshusmspermissionstatus"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->C:Ljava/lang/String;

    const-string v0, "clins.chakshucallpermission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->D:Ljava/lang/String;

    const-string v0, "clins.chakshucallpermissionstatus"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->E:Ljava/lang/String;

    const-string v0, "clins.androidsdkversion"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->F:Ljava/lang/String;

    const-string v0, "clins.kym_permission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->G:Ljava/lang/String;

    const-string v0, "clins.registration_permission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->H:Ljava/lang/String;

    const-string v0, "clins.registration_page_permission"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->I:Ljava/lang/String;

    const-string v0, "clins.registration_page_permission_status"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->J:Ljava/lang/String;

    const-string v0, "clins.kym_permission_status"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->K:Ljava/lang/String;

    const-string v0, "shareApp"

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->L:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->M:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->N:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cdot/diu/main/SathiMainActivity;->O:Z

    iput-boolean v1, p0, Lorg/cdot/diu/main/SathiMainActivity;->P:Z

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->Q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic Y(Lorg/cdot/diu/main/SathiMainActivity;)LY2/j;
    .locals 0

    iget-object p0, p0, Lorg/cdot/diu/main/SathiMainActivity;->j:LY2/j;

    return-object p0
.end method

.method public static bridge synthetic Z(Lorg/cdot/diu/main/SathiMainActivity;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/cdot/diu/main/SathiMainActivity;->j0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public G(Lio/flutter/embedding/engine/a;)V
    .locals 2

    invoke-super {p0, p1}, LN2/g;->G(Lio/flutter/embedding/engine/a;)V

    new-instance v0, LY2/j;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object p1

    invoke-virtual {p1}, LP2/a;->l()LY2/b;

    move-result-object p1

    const-string v1, "clins.sathismschannel"

    invoke-direct {v0, p1, v1}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->j:LY2/j;

    invoke-virtual {v0, p0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public final a0()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b0()Z
    .locals 6

    const-string v0, "ro.debuggable=1"

    const-string v1, "ro.secure=0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Lorg/cdot/diu/main/SathiMainActivity;->k0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final c0()Z
    .locals 7

    const-string v5, "/sbin"

    const-string v6, "/etc"

    const-string v0, "/system"

    const-string v1, "/system/bin"

    const-string v2, "/system/sbin"

    const-string v3, "/system/xbin"

    const-string v4, "/vendor/bin"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final d0()Z
    .locals 6

    const-string v4, "com.ramdroid.appquarantine"

    const-string v5, "com.topjohnwu.magisk"

    const-string v0, "com.noshufou.android.su"

    const-string v1, "com.koushikdutta.superuser"

    const-string v2, "eu.chainfire.supersu"

    const-string v3, "com.zachspong.temprootremovejb"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public final e0()Z
    .locals 7

    const-string v5, "/data/local/bin/su"

    const-string v6, "/su/bin/su"

    const-string v0, "/system/xbin/su"

    const-string v1, "/system/bin/su"

    const-string v2, "/system/sd/xbin/su"

    const-string v3, "/system/bin/failsafe/su"

    const-string v4, "/data/local/xbin/su"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final f0()Z
    .locals 5

    const-string v0, "/system/app/SuperSU.apk"

    const-string v1, "/system/app/MagiskManager.apk"

    const-string v2, "/system/app/Superuser.apk"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final g0(LY2/j$d;)Ljava/util/Map;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "permanentlyDenied"

    const-string v4, "denied"

    const-string v5, "granted"

    const-string v6, "READ_CALL_LOG"

    if-nez v2, :cond_0

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v6, "READ_PHONE_STATE"

    if-nez v2, :cond_2

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p0, v1}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission status in getChakshuSmsPermissionStatuses() is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h0(LY2/j$d;)Ljava/util/Map;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "permanentlyDenied"

    const-string v4, "denied"

    const-string v5, "granted"

    const-string v6, "READ_SMS"

    if-nez v2, :cond_0

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v6, "READ_PHONE_STATE"

    if-nez v2, :cond_2

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {p0, v1}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission status in getChakshuSmsPermissionStatuses() is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final varargs i0(LY2/j$d;[Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    invoke-static {p0, v3}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "granted"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "denied"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v4, "permanentlyDenied"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final j0(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p1, "NO_SERVICE"

    goto :goto_0

    :cond_1
    const-string p1, "NULL_PDU"

    goto :goto_0

    :cond_2
    const-string p1, "RADIO_OFF"

    goto :goto_0

    :cond_3
    const-string p1, "GENERIC_FAILURE"

    goto :goto_0

    :cond_4
    const-string p1, "RESULT_CANCELED"

    goto :goto_0

    :cond_5
    const-string p1, "SUCCESS"

    :goto_0
    return-object p1
.end method

.method public final k0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final l0()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    const-string v0, "deviceUniqueId"

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final m0()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->e0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->b0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n0(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SimCardUtil : No SIM cards available"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final o0(LY2/j$d;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "READ_PHONE_STATE"

    const-string v4, "READ_CALL_LOG"

    const-string v5, "android.permission.READ_PHONE_STATE"

    if-nez v2, :cond_1

    invoke-static {p0, v5}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "granted"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, LG/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "requested"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, LN2/g;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lorg/cdot/diu/main/SathiMainActivity$a;

    invoke-direct {p1, p0}, Lorg/cdot/diu/main/SathiMainActivity$a;-><init>(Lorg/cdot/diu/main/SathiMainActivity;)V

    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->M:Landroid/content/BroadcastReceiver;

    new-instance p1, Lorg/cdot/diu/main/SathiMainActivity$b;

    invoke-direct {p1, p0}, Lorg/cdot/diu/main/SathiMainActivity$b;-><init>(Lorg/cdot/diu/main/SathiMainActivity;)V

    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->N:Landroid/content/BroadcastReceiver;

    const-string p1, "[onCreate]"

    const-string v0, "registering sms receivers"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->M:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/cdot/diu/main/SathiMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->O:Z

    iget-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->N:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SMS_DELIVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/cdot/diu/main/SathiMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->P:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, LN2/g;->onDestroy()V

    iget-boolean v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lorg/cdot/diu/main/SathiMainActivity;->O:Z

    :cond_0
    iget-boolean v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cdot/diu/main/SathiMainActivity;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lorg/cdot/diu/main/SathiMainActivity;->P:Z

    :cond_1
    const-string v0, "[onDestroy]"

    const-string v1, " destroy activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p1, LY2/i;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "android.permission.CAMERA"

    const-string v6, "android.permission.READ_PHONE_STATE"

    const/4 v7, 0x0

    const-string v8, "An error occurred: "

    const-string v9, "ERROR_CODE"

    const/4 v10, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v11, "clins.uniqueid"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v11, "clins.subscriptioninfo"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v11, "clins.kym_permission_status"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v11, "clins.phoneaccountinfo"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v11, "clins.sendsms"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v11, "clins.chakshusmspermissionstatus"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v11, "clins.chakshusmspermission"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v11, "clins.permissionstatus"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v11, "clins.rooteddevice"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v11, "clins.calllog"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v11, "clins.androidsdkversion"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v11, "shareApp"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v11, "clins.registration_page_permission_status"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_d
    const-string v11, "clins.simcardavailability"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_e
    const-string v11, "clins.registration_permission"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_0

    :cond_e
    move v10, v0

    goto :goto_0

    :sswitch_f
    const-string v11, "clins.chakshucallpermissionstatus"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_0

    :cond_f
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_10
    const-string v11, "clins.smslog"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_0

    :cond_10
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_11
    const-string v11, "clins.kym_permission"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    move v10, v1

    goto :goto_0

    :sswitch_12
    const-string v11, "clins.chakshucallpermission"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_0

    :cond_12
    move v10, v2

    goto :goto_0

    :sswitch_13
    const-string v11, "clins.registration_page_permission"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_0

    :cond_13
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    invoke-interface {p2}, LY2/j$d;->c()V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->l0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    :try_start_0
    new-instance p1, LQ3/c;

    invoke-direct {p1}, LQ3/c;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LQ3/c;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v9, p1, v7}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/cdot/diu/main/SathiMainActivity;->i0(LY2/j$d;[Ljava/lang/String;)Ljava/util/Map;

    goto/16 :goto_1

    :pswitch_3
    :try_start_1
    new-instance p1, LQ3/b;

    invoke-direct {p1}, LQ3/b;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LQ3/b;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v9, p1, v7}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "sms_num"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "sms_content"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", smsContent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[SATHI]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/cdot/diu/main/SathiMainActivity;->r0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p2}, Lorg/cdot/diu/main/SathiMainActivity;->h0(LY2/j$d;)Ljava/util/Map;

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Lorg/cdot/diu/main/SathiMainActivity;->p0(LY2/j$d;)V

    goto/16 :goto_1

    :pswitch_7
    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/cdot/diu/main/SathiMainActivity;->i0(LY2/j$d;[Ljava/lang/String;)Ljava/util/Map;

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->m0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "phoneAccountId"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "callCount"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_2
    new-instance v1, LQ3/b;

    invoke-direct {v1}, LQ3/b;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, LQ3/b;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v9, p1, v7}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lorg/cdot/diu/main/SathiMainActivity;->s0()V

    goto/16 :goto_1

    :pswitch_c
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/cdot/diu/main/SathiMainActivity;->i0(LY2/j$d;[Ljava/lang/String;)Ljava/util/Map;

    goto/16 :goto_1

    :pswitch_d
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cdot/diu/main/SathiMainActivity;->n0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v9, p1, v7}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_e
    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v2, p1}, Lorg/cdot/diu/main/SathiMainActivity;->q0(LY2/j$d;I[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0, p2}, Lorg/cdot/diu/main/SathiMainActivity;->g0(LY2/j$d;)Ljava/util/Map;

    goto :goto_1

    :pswitch_10
    const-string v0, "subscriptionId"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "smsCount"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_4
    new-instance v1, LQ3/c;

    invoke-direct {v1}, LQ3/c;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, LQ3/c;->a(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v9, p1, v7}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_11
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lorg/cdot/diu/main/SathiMainActivity;->q0(LY2/j$d;I[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p2}, Lorg/cdot/diu/main/SathiMainActivity;->o0(LY2/j$d;)V

    goto :goto_1

    :pswitch_13
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lorg/cdot/diu/main/SathiMainActivity;->q0(LY2/j$d;I[Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7286eb9e -> :sswitch_13
        -0x63e8b64b -> :sswitch_12
        -0x59791888 -> :sswitch_11
        -0x5851818c -> :sswitch_10
        -0x38adc219 -> :sswitch_f
        -0x366ff6f4 -> :sswitch_e
        -0x32cf7147 -> :sswitch_d
        -0x2fa69991 -> :sswitch_c
        -0x2c554e3e -> :sswitch_b
        -0x170d63bc -> :sswitch_a
        -0x151f39e3 -> :sswitch_9
        -0x13530900 -> :sswitch_8
        -0xf261d96 -> :sswitch_7
        -0x2958020 -> :sswitch_6
        0x1190e7d2 -> :sswitch_5
        0x403082c8 -> :sswitch_4
        0x5c0fe616 -> :sswitch_3
        0x64020e99 -> :sswitch_2
        0x64300b34 -> :sswitch_1
        0x69ea0595 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    iget-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    aget v2, p3, v0

    if-nez v2, :cond_1

    const-string v2, "granted"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "denied"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "permanentlyDenied"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, LN2/g;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, LN2/g;->onStop()V

    return-void
.end method

.method public final p0(LY2/j$d;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.permission.READ_SMS"

    invoke-static {p0, v1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "READ_PHONE_STATE"

    const-string v4, "READ_SMS"

    const-string v5, "android.permission.READ_PHONE_STATE"

    if-nez v2, :cond_1

    invoke-static {p0, v5}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "granted"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, LG/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "requested"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final varargs q0(LY2/j$d;I[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    invoke-static {p0, v5}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "requested"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v6, "granted"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity;->h:LY2/j$d;

    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, LG/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final r0(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p3, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "SMS_DELIVERED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p3

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v3}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "Permission to read SIM information is not granted."

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "Please insert a SIM card to continue."

    goto/16 :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    :goto_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simSlotIndex :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v4, p1

    move-object v7, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    move-object v3, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Active mobile number detected in Device : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "Your Device is not able to send SMS to 14422."

    :goto_2
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smsSent : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final s0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Download Sanchar Saathi App-\n\nAndroid: https://play.google.com/store/apps/details?id=com.dot.app.sancharsaathi&pcampaignid=web_share\n\niOS: https://apps.apple.com/in/app/sanchar-saathi/id6739700695\n"

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
