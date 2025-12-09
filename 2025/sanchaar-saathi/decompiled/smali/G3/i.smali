.class public abstract synthetic LG3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LG3/e;LG3/d;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, LG3/f;->h(LG3/e;)V

    invoke-interface {p1, p0, p2}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method
