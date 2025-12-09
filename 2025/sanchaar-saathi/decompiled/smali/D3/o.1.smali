.class public abstract LD3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/l;LD3/W;)V
    .locals 1

    new-instance v0, LD3/X;

    invoke-direct {v0, p1}, LD3/X;-><init>(LD3/W;)V

    invoke-interface {p0, v0}, LD3/l;->I(Lu3/l;)V

    return-void
.end method

.method public static final b(Ll3/e;)LD3/m;
    .locals 2

    instance-of v0, p0, LI3/j;

    if-nez v0, :cond_0

    new-instance v0, LD3/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LD3/m;-><init>(Ll3/e;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, LI3/j;

    invoke-virtual {v0}, LI3/j;->j()LD3/m;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LD3/m;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, LD3/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LD3/m;-><init>(Ll3/e;I)V

    return-object v0
.end method
