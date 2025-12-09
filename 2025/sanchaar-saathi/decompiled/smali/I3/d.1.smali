.class public abstract LI3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LI3/d;->a:LI3/F;

    return-void
.end method

.method public static final synthetic a()LI3/F;
    .locals 1

    sget-object v0, LI3/d;->a:LI3/F;

    return-object v0
.end method

.method public static final b(LI3/e;)LI3/e;
    .locals 2

    :cond_0
    :goto_0
    invoke-static {p0}, LI3/e;->a(LI3/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LI3/d;->a()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    check-cast v0, LI3/e;

    if-nez v0, :cond_2

    invoke-virtual {p0}, LI3/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static final c(LI3/C;JLu3/p;)Ljava/lang/Object;
    .locals 4

    :cond_0
    :goto_0
    iget-wide v0, p0, LI3/C;->g:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, LI3/C;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, LI3/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {p0}, LI3/e;->a(LI3/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LI3/d;->a()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object p0, LI3/d;->a:LI3/F;

    invoke-static {p0}, LI3/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, LI3/e;

    check-cast v0, LI3/C;

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    move-object p0, v0

    goto :goto_0

    :cond_5
    iget-wide v0, p0, LI3/C;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI3/C;

    invoke-virtual {p0, v0}, LI3/e;->l(LI3/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LI3/C;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, LI3/e;->k()V

    goto :goto_2
.end method
