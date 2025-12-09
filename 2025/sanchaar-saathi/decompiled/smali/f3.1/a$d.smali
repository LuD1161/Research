.class public interface abstract Lf3/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# direct methods
.method public static a()LY2/h;
    .locals 1

    sget-object v0, Lf3/a$c;->d:Lf3/a$c;

    return-object v0
.end method

.method public static synthetic b(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Lf3/a$d;->o()Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lf3/a;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf3/a$d;->b(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic d(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/a$e;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/a$a;

    :try_start_0
    invoke-interface {p0, v2, v3, v4, p1}, Lf3/a$d;->m(Ljava/lang/String;Ljava/lang/Boolean;Lf3/a$e;Lf3/a$a;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lf3/a;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static f(LY2/b;Lf3/a$d;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lf3/a$d;->q(LY2/b;Ljava/lang/String;Lf3/a$d;)V

    return-void
.end method

.method public static synthetic g(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf3/a$d;->d(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic h(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :try_start_0
    invoke-interface {p0, v2, p1}, Lf3/a$d;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lf3/a;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf3/a$d;->n(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic l(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf3/a$d;->p(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic n(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p0, p1}, Lf3/a$d;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lf3/a;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Lf3/a$d;->j()V

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lf3/a;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static q(LY2/b;Ljava/lang/String;Lf3/a$d;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, LY2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.canLaunchUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lf3/a$d;->a()LY2/h;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance v2, Lf3/b;

    invoke-direct {v2, p2}, Lf3/b;-><init>(Lf3/a$d;)V

    invoke-virtual {v0, v2}, LY2/a;->e(LY2/a$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, LY2/a;->e(LY2/a$d;)V

    :goto_1
    new-instance v0, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.launchUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf3/a$d;->a()LY2/h;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    if-eqz p2, :cond_2

    new-instance v2, Lf3/c;

    invoke-direct {v2, p2}, Lf3/c;-><init>(Lf3/a$d;)V

    invoke-virtual {v0, v2}, LY2/a;->e(LY2/a$d;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, LY2/a;->e(LY2/a$d;)V

    :goto_2
    new-instance v0, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.openUrlInApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf3/a$d;->a()LY2/h;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    if-eqz p2, :cond_3

    new-instance v2, Lf3/d;

    invoke-direct {v2, p2}, Lf3/d;-><init>(Lf3/a$d;)V

    invoke-virtual {v0, v2}, LY2/a;->e(LY2/a$d;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, LY2/a;->e(LY2/a$d;)V

    :goto_3
    new-instance v0, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.supportsCustomTabs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf3/a$d;->a()LY2/h;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    if-eqz p2, :cond_4

    new-instance v2, Lf3/e;

    invoke-direct {v2, p2}, Lf3/e;-><init>(Lf3/a$d;)V

    invoke-virtual {v0, v2}, LY2/a;->e(LY2/a$d;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v1}, LY2/a;->e(LY2/a$d;)V

    :goto_4
    new-instance v0, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.url_launcher_android.UrlLauncherApi.closeWebView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lf3/a$d;->a()LY2/h;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    if-eqz p2, :cond_5

    new-instance p0, Lf3/f;

    invoke-direct {p0, p2}, Lf3/f;-><init>(Lf3/a$d;)V

    invoke-virtual {v0, p0}, LY2/a;->e(LY2/a$d;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v1}, LY2/a;->e(LY2/a$d;)V

    :goto_5
    return-void
.end method

.method public static synthetic r(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lf3/a$d;->h(Lf3/a$d;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method


# virtual methods
.method public abstract e(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract j()V
.end method

.method public abstract k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
.end method

.method public abstract m(Ljava/lang/String;Ljava/lang/Boolean;Lf3/a$e;Lf3/a$a;)Ljava/lang/Boolean;
.end method

.method public abstract o()Ljava/lang/Boolean;
.end method
