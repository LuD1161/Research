.class public abstract Ll3/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ll3/i$b;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ll3/i$b;Ll3/i$c;)Ll3/i$b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ll3/i$b;->getKey()Ll3/i$c;

    move-result-object v0

    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get"

    invoke-static {p0, p1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ll3/i$b;Ll3/i$c;)Ll3/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ll3/i$b;->getKey()Ll3/i$c;

    move-result-object v0

    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Ll3/j;->e:Ll3/j;

    :cond_0
    return-object p0
.end method

.method public static d(Ll3/i$b;Ll3/i;)Ll3/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ll3/i$a;->b(Ll3/i;Ll3/i;)Ll3/i;

    move-result-object p0

    return-object p0
.end method
