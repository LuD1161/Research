.class public interface abstract Ld3/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# direct methods
.method public static a()LY2/h;
    .locals 1

    sget-object v0, Ld3/h$b;->d:Ld3/h$b;

    return-object v0
.end method

.method public static synthetic b(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->j()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(LY2/b;Ljava/lang/String;Ld3/h$a;)V
    .locals 5

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
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v0

    new-instance v1, LY2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getTemporaryPath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v2, Ld3/a;

    invoke-direct {v2, p2}, Ld3/a;-><init>(Ld3/h$a;)V

    invoke-virtual {v1, v2}, LY2/a;->e(LY2/a$d;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_1
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getApplicationSupportPath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_2

    new-instance v1, Ld3/b;

    invoke-direct {v1, p2}, Ld3/b;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, v1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_2
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getApplicationDocumentsPath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_3

    new-instance v1, Ld3/c;

    invoke-direct {v1, p2}, Ld3/c;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, v1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_3
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getApplicationCachePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_4

    new-instance v1, Ld3/d;

    invoke-direct {v1, p2}, Ld3/d;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, v1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_4
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getExternalStoragePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_5

    new-instance v1, Ld3/e;

    invoke-direct {v1, p2}, Ld3/e;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, v1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_5
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getExternalCachePaths"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_6

    new-instance v1, Ld3/f;

    invoke-direct {v1, p2}, Ld3/f;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, v1}, LY2/a;->e(LY2/a$d;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_6
    invoke-interface {p0}, LY2/b;->d()LY2/b$c;

    move-result-object v1

    new-instance v2, LY2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dev.flutter.pigeon.path_provider_android.PathProviderApi.getExternalStoragePaths"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ld3/h$a;->a()LY2/h;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;LY2/b$c;)V

    if-eqz p2, :cond_7

    new-instance p0, Ld3/g;

    invoke-direct {p0, p2}, Ld3/g;-><init>(Ld3/h$a;)V

    invoke-virtual {v2, p0}, LY2/a;->e(LY2/a$d;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v2, v0}, LY2/a;->e(LY2/a$d;)V

    :goto_7
    return-void
.end method

.method public static synthetic d(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->u(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic e(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->o()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->b(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic l(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->v()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->e(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic n(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->f()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static p(LY2/b;Ld3/h$a;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Ld3/h$a;->c(LY2/b;Ljava/lang/String;Ld3/h$a;)V

    return-void
.end method

.method public static synthetic q(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->g()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->q(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic s(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->l(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic t(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->w(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method

.method public static synthetic u(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/h$c;

    :try_start_0
    invoke-interface {p0, p1}, Ld3/h$a;->i(Ld3/h$c;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p2, v0}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic w(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ld3/h$a;->h()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ld3/h;->a(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-interface {p2, p1}, LY2/a$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic x(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld3/h$a;->n(Ld3/h$a;Ljava/lang/Object;LY2/a$e;)V

    return-void
.end method


# virtual methods
.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i(Ld3/h$c;)Ljava/util/List;
.end method

.method public abstract j()Ljava/util/List;
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract v()Ljava/lang/String;
.end method
