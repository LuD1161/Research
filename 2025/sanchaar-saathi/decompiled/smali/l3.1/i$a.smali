.class public abstract Ll3/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Ll3/i;Ll3/i$b;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$a;->c(Ll3/i;Ll3/i$b;)Ll3/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ll3/i;Ll3/i;)Ll3/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ll3/j;->e:Ll3/j;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll3/h;

    invoke-direct {v0}, Ll3/h;-><init>()V

    invoke-interface {p1, p0, v0}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/i;

    :goto_0
    return-object p0
.end method

.method public static c(Ll3/i;Ll3/i$b;)Ll3/i;
    .locals 3

    const-string v0, "acc"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ll3/i$b;->getKey()Ll3/i$c;

    move-result-object v0

    invoke-interface {p0, v0}, Ll3/i;->B(Ll3/i$c;)Ll3/i;

    move-result-object p0

    sget-object v0, Ll3/j;->e:Ll3/j;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Ll3/f;->d:Ll3/f$b;

    invoke-interface {p0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v2

    check-cast v2, Ll3/f;

    if-nez v2, :cond_1

    new-instance v0, Ll3/d;

    invoke-direct {v0, p0, p1}, Ll3/d;-><init>(Ll3/i;Ll3/i$b;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Ll3/i;->B(Ll3/i$c;)Ll3/i;

    move-result-object p0

    if-ne p0, v0, :cond_2

    new-instance p0, Ll3/d;

    invoke-direct {p0, p1, v2}, Ll3/d;-><init>(Ll3/i;Ll3/i$b;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance v0, Ll3/d;

    new-instance v1, Ll3/d;

    invoke-direct {v1, p0, p1}, Ll3/d;-><init>(Ll3/i;Ll3/i$b;)V

    invoke-direct {v0, v1, v2}, Ll3/d;-><init>(Ll3/i;Ll3/i$b;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
