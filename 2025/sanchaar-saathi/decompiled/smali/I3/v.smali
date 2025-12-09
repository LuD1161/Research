.class public abstract LI3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;Ljava/lang/String;)LI3/w;
    .locals 0

    if-eqz p0, :cond_0

    throw p0

    :cond_0
    invoke-static {}, LI3/v;->d()Ljava/lang/Void;

    new-instance p0, Lh3/c;

    invoke-direct {p0}, Lh3/c;-><init>()V

    throw p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)LI3/w;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {p0, p1}, LI3/v;->a(Ljava/lang/Throwable;Ljava/lang/String;)LI3/w;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LD3/z0;)Z
    .locals 0

    invoke-virtual {p0}, LD3/z0;->N()LD3/z0;

    move-result-object p0

    instance-of p0, p0, LI3/w;

    return p0
.end method

.method public static final d()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(LI3/t;Ljava/util/List;)LD3/z0;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, LI3/t;->b(Ljava/util/List;)LD3/z0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, LI3/t;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LI3/v;->a(Ljava/lang/Throwable;Ljava/lang/String;)LI3/w;

    move-result-object p0

    :goto_0
    return-object p0
.end method
