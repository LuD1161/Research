.class public final Lp2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lq2/s;

.field public static final f:Landroid/content/Intent;


# instance fields
.field public a:Lq2/D;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lp2/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq2/s;

    const-string v1, "AppUpdateService"

    invoke-direct {v0, v1}, Lq2/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp2/w;->e:Lq2/s;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lp2/w;->f:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp2/y;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp2/w;->b:Ljava/lang/String;

    iput-object p1, p0, Lp2/w;->c:Landroid/content/Context;

    iput-object p2, p0, Lp2/w;->d:Lp2/y;

    invoke-static {p1}, Lq2/c;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lq2/D;

    invoke-static {p1}, Lq2/F;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lp2/w;->e:Lq2/s;

    sget-object v4, Lp2/w;->f:Landroid/content/Intent;

    sget-object v5, Lp2/q;->a:Lp2/q;

    const/4 v6, 0x0

    const-string v3, "AppUpdateService"

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lq2/D;-><init>(Landroid/content/Context;Lq2/s;Ljava/lang/String;Landroid/content/Intent;Lp2/q;Lq2/y;)V

    iput-object p2, p0, Lp2/w;->a:Lq2/D;

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "error.code"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lp2/w;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lp2/w;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lp2/w;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lp2/w;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lp2/w;->e:Lq2/s;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "The current version of the app could not be retrieved"

    invoke-virtual {p0, v1, p1}, Lq2/s;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const-string p1, "app.version.code"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic c()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lp2/w;->i()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic f(Lp2/w;Landroid/os/Bundle;Ljava/lang/String;)Lp2/a;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "version.code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "update.availability"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "install.status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "client.version.staleness"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "in.app.update.priority"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "bytes.downloaded"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "total.bytes.to.download"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "additional.size.required"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v1, p0

    iget-object v1, v1, Lp2/w;->d:Lp2/y;

    invoke-virtual {v1}, Lp2/y;->a()J

    move-result-wide v15

    const-string v1, "blocking.intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/app/PendingIntent;

    const-string v2, "nonblocking.intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/app/PendingIntent;

    const-string v3, "blocking.destructive.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    move/from16 v22, v8

    const-string v8, "nonblocking.destructive.intent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/app/PendingIntent;

    move-wide/from16 v23, v9

    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v21, v9

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "update.precondition.failures:blocking.destructive.intent"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lp2/w;->k(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "update.precondition.failures:nonblocking.destructive.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lp2/w;->k(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "update.precondition.failures:blocking.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lp2/w;->k(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update.precondition.failures:nonblocking.intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lp2/w;->k(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    move/from16 v8, v22

    move-wide/from16 v9, v23

    invoke-static/range {v3 .. v21}, Lp2/a;->k(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/util/Map;)Lp2/a;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic g()Lq2/s;
    .locals 1

    sget-object v0, Lp2/w;->e:Lq2/s;

    return-object v0
.end method

.method public static bridge synthetic h(Lp2/w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp2/w;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static i()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_update"

    invoke-static {v2}, Lq2/o;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "java"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "playcore_version_code"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "native"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "playcore_native_version"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v3, "unity"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "playcore_unity_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "playcore.version.code"

    const/16 v2, 0x2afc

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static j()LR1/f;
    .locals 4

    sget-object v0, Lp2/w;->e:Lq2/s;

    const/16 v1, -0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v2}, Lq2/s;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ls2/a;

    invoke-direct {v0, v1}, Ls2/a;-><init>(I)V

    invoke-static {v0}, LR1/i;->a(Ljava/lang/Exception;)LR1/f;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)LR1/f;
    .locals 3

    iget-object v0, p0, Lp2/w;->a:Lq2/D;

    if-nez v0, :cond_0

    invoke-static {}, Lp2/w;->j()LR1/f;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lp2/w;->e:Lq2/s;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "completeUpdate(%s)"

    invoke-virtual {v0, v2, v1}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, LR1/g;

    invoke-direct {v0}, LR1/g;-><init>()V

    iget-object v1, p0, Lp2/w;->a:Lq2/D;

    new-instance v2, Lp2/s;

    invoke-direct {v2, p0, v0, v0, p1}, Lp2/s;-><init>(Lp2/w;LR1/g;LR1/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lq2/D;->s(Lq2/t;LR1/g;)V

    invoke-virtual {v0}, LR1/g;->a()LR1/f;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;)LR1/f;
    .locals 3

    iget-object v0, p0, Lp2/w;->a:Lq2/D;

    if-nez v0, :cond_0

    invoke-static {}, Lp2/w;->j()LR1/f;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lp2/w;->e:Lq2/s;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestUpdateInfo(%s)"

    invoke-virtual {v0, v2, v1}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, LR1/g;

    invoke-direct {v0}, LR1/g;-><init>()V

    iget-object v1, p0, Lp2/w;->a:Lq2/D;

    new-instance v2, Lp2/r;

    invoke-direct {v2, p0, v0, p1, v0}, Lp2/r;-><init>(Lp2/w;LR1/g;Ljava/lang/String;LR1/g;)V

    invoke-virtual {v1, v2, v0}, Lq2/D;->s(Lq2/t;LR1/g;)V

    invoke-virtual {v0}, LR1/g;->a()LR1/f;

    move-result-object p1

    return-object p1
.end method
