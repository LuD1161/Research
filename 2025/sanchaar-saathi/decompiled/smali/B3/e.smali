.class public abstract LB3/e;
.super LB3/d;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)LB3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LB3/e$a;

    invoke-direct {v0, p0}, LB3/e$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, LB3/e;->b(LB3/b;)LB3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LB3/b;)LB3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LB3/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LB3/a;

    invoke-direct {v0, p0}, LB3/a;-><init>(LB3/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
