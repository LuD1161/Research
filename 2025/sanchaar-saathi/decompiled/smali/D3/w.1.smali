.class public abstract LD3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/p0;)LD3/u;
    .locals 1

    new-instance v0, LD3/v;

    invoke-direct {v0, p0}, LD3/v;-><init>(LD3/p0;)V

    return-object v0
.end method

.method public static synthetic b(LD3/p0;ILjava/lang/Object;)LD3/u;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, LD3/w;->a(LD3/p0;)LD3/u;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LD3/u;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lh3/h;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, LD3/u;->t(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, LD3/u;->r(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_0
    return p0
.end method
