.class public abstract Ll3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu3/p;Ljava/lang/Object;Ll3/e;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lm3/b;->a(Lu3/p;Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p0

    invoke-static {p0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object p0

    sget-object p1, Lh3/h;->e:Lh3/h$a;

    sget-object p1, Lh3/n;->a:Lh3/n;

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    return-void
.end method
