.class public abstract Lm3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lu3/p;Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ln3/h;->a(Ll3/e;)Ll3/e;

    move-result-object p2

    instance-of v0, p0, Ln3/a;

    if-eqz v0, :cond_0

    check-cast p0, Ln3/a;

    invoke-virtual {p0, p1, p2}, Ln3/a;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    sget-object v1, Ll3/j;->e:Ll3/j;

    if-ne v0, v1, :cond_1

    new-instance v0, Lm3/b$a;

    invoke-direct {v0, p2, p0, p1}, Lm3/b$a;-><init>(Ll3/e;Lu3/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lm3/b$b;

    invoke-direct {v1, p2, v0, p0, p1}, Lm3/b$b;-><init>(Ll3/e;Ll3/i;Lu3/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ll3/e;)Ll3/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ln3/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ln3/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ln3/d;->r()Ll3/e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
