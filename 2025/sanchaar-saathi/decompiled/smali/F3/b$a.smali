.class public final LF3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF3/f;
.implements LD3/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:LD3/m;

.field public final synthetic g:LF3/b;


# direct methods
.method public constructor <init>(LF3/b;)V
    .locals 0

    iput-object p1, p0, LF3/b$a;->g:LF3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LF3/c;->m()LI3/F;

    move-result-object p1

    iput-object p1, p0, LF3/b$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(LF3/b$a;)V
    .locals 0

    invoke-virtual {p0}, LF3/b$a;->h()V

    return-void
.end method

.method public static final synthetic d(LF3/b$a;LD3/m;)V
    .locals 0

    iput-object p1, p0, LF3/b$a;->f:LD3/m;

    return-void
.end method

.method public static final synthetic e(LF3/b$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LF3/b$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ll3/e;)Ljava/lang/Object;
    .locals 13

    iget-object v6, p0, LF3/b$a;->g:LF3/b;

    invoke-static {}, LF3/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF3/j;

    :goto_0
    invoke-virtual {v6}, LF3/b;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LF3/b$a;->g()Z

    move-result p1

    invoke-static {p1}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-static {}, LF3/b;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v1, LF3/c;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    rem-long v4, v10, v4

    long-to-int v9, v4

    iget-wide v4, v0, LI3/C;->g:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {v6, v2, v3, v0}, LF3/b;->a(LF3/b;JLF3/j;)LF3/j;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move-wide v3, v10

    invoke-static/range {v0 .. v5}, LF3/b;->q(LF3/b;LF3/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LF3/c;->r()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-static {}, LF3/c;->h()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, LF3/b;->O()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    invoke-virtual {v8}, LI3/e;->b()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    invoke-static {}, LF3/c;->s()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v7, p0

    move-object v12, p1

    invoke-virtual/range {v7 .. v12}, LF3/b$a;->f(LF3/j;IJLl3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v8}, LI3/e;->b()V

    iput-object v0, p0, LF3/b$a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LI3/C;I)V
    .locals 1

    iget-object v0, p0, LF3/b$a;->f:LD3/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LD3/m;->b(LI3/C;I)V

    :cond_0
    return-void
.end method

.method public final f(LF3/j;IJLl3/e;)Ljava/lang/Object;
    .locals 10

    iget-object v6, p0, LF3/b$a;->g:LF3/b;

    invoke-static {p5}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object v0

    invoke-static {v0}, LD3/o;->b(Ll3/e;)LD3/m;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, LF3/b$a;->d(LF3/b$a;LD3/m;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LF3/b;->q(LF3/b;LF3/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LF3/c;->r()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, LF3/b;->m(LF3/b;LD3/N0;LF3/j;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, LF3/c;->h()LI3/F;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, LF3/b;->O()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, LI3/e;->b()V

    :cond_1
    invoke-static {}, LF3/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF3/j;

    :cond_2
    :goto_0
    invoke-virtual {v6}, LF3/b;->V()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, LF3/b$a;->c(LF3/b$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, LF3/b;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, LF3/c;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, LI3/C;->g:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    invoke-static {v6, v0, v1, p1}, LF3/b;->a(LF3/b;JLF3/j;)LF3/j;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LF3/b;->q(LF3/b;LF3/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LF3/c;->r()LI3/F;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, LF3/b;->m(LF3/b;LD3/N0;LF3/j;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, LF3/c;->h()LI3/F;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, LF3/b;->O()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, LI3/e;->b()V

    goto :goto_0

    :cond_7
    invoke-static {}, LF3/c;->s()LI3/F;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, LI3/e;->b()V

    invoke-static {p0, v0}, LF3/b$a;->e(LF3/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, LF3/b$a;->d(LF3/b$a;LD3/m;)V

    invoke-static {v8}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, LF3/b;->f:Lu3/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, LD3/m;->a()Ll3/i;

    move-result-object p3

    invoke-static {p2, v0, p3}, LI3/x;->a(Lu3/l;Ljava/lang/Object;Ll3/i;)Lu3/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, LD3/m;->v(Ljava/lang/Object;Lu3/l;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, LI3/e;->b()V

    invoke-static {p0, v0}, LF3/b$a;->e(LF3/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, LF3/b$a;->d(LF3/b$a;LD3/m;)V

    invoke-static {v8}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, LF3/b;->f:Lu3/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, LD3/m;->a()Ll3/i;

    move-result-object p3

    invoke-static {p2, v0, p3}, LI3/x;->a(Lu3/l;Ljava/lang/Object;Ll3/i;)Lu3/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, LD3/m;->x()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {p5}, Ln3/h;->c(Ll3/e;)V

    :cond_b
    return-object p1

    :goto_3
    invoke-virtual {v7}, LD3/m;->L()V

    throw p1
.end method

.method public final g()Z
    .locals 1

    invoke-static {}, LF3/c;->z()LI3/F;

    move-result-object v0

    iput-object v0, p0, LF3/b$a;->e:Ljava/lang/Object;

    iget-object v0, p0, LF3/b$a;->g:LF3/b;

    invoke-virtual {v0}, LF3/b;->K()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, LI3/E;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, LF3/b$a;->f:LD3/m;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LF3/b$a;->f:LD3/m;

    invoke-static {}, LF3/c;->z()LI3/F;

    move-result-object v1

    iput-object v1, p0, LF3/b$a;->e:Ljava/lang/Object;

    iget-object v1, p0, LF3/b$a;->g:LF3/b;

    invoke-virtual {v1}, LF3/b;->K()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lh3/h;->e:Lh3/h$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/e;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lh3/h;->e:Lh3/h$a;

    invoke-static {v1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/e;->q(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, LF3/b$a;->f:LD3/m;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LF3/b$a;->f:LD3/m;

    iput-object p1, p0, LF3/b$a;->e:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, LF3/b$a;->g:LF3/b;

    iget-object v3, v3, LF3/b;->f:Lu3/l;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, LD3/m;->a()Ll3/i;

    move-result-object v1

    invoke-static {v3, p1, v1}, LI3/x;->a(Lu3/l;Ljava/lang/Object;Ll3/i;)Lu3/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, LF3/c;->u(LD3/l;Ljava/lang/Object;Lu3/l;)Z

    move-result p1

    return p1
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, LF3/b$a;->f:LD3/m;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LF3/b$a;->f:LD3/m;

    invoke-static {}, LF3/c;->z()LI3/F;

    move-result-object v1

    iput-object v1, p0, LF3/b$a;->e:Ljava/lang/Object;

    iget-object v1, p0, LF3/b$a;->g:LF3/b;

    invoke-virtual {v1}, LF3/b;->K()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lh3/h;->e:Lh3/h$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/e;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lh3/h;->e:Lh3/h$a;

    invoke-static {v1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/e;->q(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LF3/b$a;->e:Ljava/lang/Object;

    invoke-static {}, LF3/c;->m()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, LF3/c;->m()LI3/F;

    move-result-object v1

    iput-object v1, p0, LF3/b$a;->e:Ljava/lang/Object;

    invoke-static {}, LF3/c;->z()LI3/F;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LF3/b$a;->g:LF3/b;

    invoke-static {v0}, LF3/b;->d(LF3/b;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, LI3/E;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
