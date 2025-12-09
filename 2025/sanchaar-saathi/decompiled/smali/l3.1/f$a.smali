.class public abstract Ll3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ll3/f;Ll3/i$c;)Ll3/i$b;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ll3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ll3/b;

    invoke-interface {p0}, Ll3/i$b;->getKey()Ll3/i$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/b;->a(Ll3/i$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ll3/b;->b(Ll3/i$b;)Ll3/i$b;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Ll3/f;->d:Ll3/f$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ll3/f;Ll3/i$c;)Ll3/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ll3/b;

    if-eqz v0, :cond_1

    check-cast p1, Ll3/b;

    invoke-interface {p0}, Ll3/i$b;->getKey()Ll3/i$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/b;->a(Ll3/i$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ll3/b;->b(Ll3/i$b;)Ll3/i$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Ll3/j;->e:Ll3/j;

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Ll3/f;->d:Ll3/f$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Ll3/j;->e:Ll3/j;

    :cond_2
    return-object p0
.end method
