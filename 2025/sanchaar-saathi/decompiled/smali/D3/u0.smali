.class public abstract synthetic LD3/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/p0;)LD3/x;
    .locals 1

    new-instance v0, LD3/s0;

    invoke-direct {v0, p0}, LD3/s0;-><init>(LD3/p0;)V

    return-object v0
.end method

.method public static synthetic b(LD3/p0;ILjava/lang/Object;)LD3/x;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, LD3/t0;->a(LD3/p0;)LD3/x;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ll3/i;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p0, v0}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p0

    check-cast p0, LD3/p0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LD3/p0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final d(LD3/p0;)V
    .locals 1

    invoke-interface {p0}, LD3/p0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, LD3/p0;->z()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final e(Ll3/i;)V
    .locals 1

    sget-object v0, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p0, v0}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p0

    check-cast p0, LD3/p0;

    if-eqz p0, :cond_0

    invoke-static {p0}, LD3/t0;->d(LD3/p0;)V

    :cond_0
    return-void
.end method
