.class public LR0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR0/K$c;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public e:Landroid/content/Context;

.field public final f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Landroidx/work/WorkerParameters$a;

.field public i:LZ0/u;

.field public j:Landroidx/work/c;

.field public k:Lc1/b;

.field public l:Landroidx/work/c$a;

.field public m:Landroidx/work/a;

.field public n:LY0/a;

.field public o:Landroidx/work/impl/WorkDatabase;

.field public p:LZ0/v;

.field public q:LZ0/b;

.field public r:Ljava/util/List;

.field public s:Ljava/lang/String;

.field public t:Lb1/c;

.field public final u:Lb1/c;

.field public volatile v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LR0/K;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LR0/K$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/work/c$a;->a()Landroidx/work/c$a;

    move-result-object v0

    iput-object v0, p0, LR0/K;->l:Landroidx/work/c$a;

    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, LR0/K;->t:Lb1/c;

    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, LR0/K;->u:Lb1/c;

    iget-object v0, p1, LR0/K$c;->a:Landroid/content/Context;

    iput-object v0, p0, LR0/K;->e:Landroid/content/Context;

    iget-object v0, p1, LR0/K$c;->d:Lc1/b;

    iput-object v0, p0, LR0/K;->k:Lc1/b;

    iget-object v0, p1, LR0/K$c;->c:LY0/a;

    iput-object v0, p0, LR0/K;->n:LY0/a;

    iget-object v0, p1, LR0/K$c;->g:LZ0/u;

    iput-object v0, p0, LR0/K;->i:LZ0/u;

    iget-object v0, v0, LZ0/u;->a:Ljava/lang/String;

    iput-object v0, p0, LR0/K;->f:Ljava/lang/String;

    iget-object v0, p1, LR0/K$c;->h:Ljava/util/List;

    iput-object v0, p0, LR0/K;->g:Ljava/util/List;

    iget-object v0, p1, LR0/K$c;->j:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, LR0/K;->h:Landroidx/work/WorkerParameters$a;

    iget-object v0, p1, LR0/K$c;->b:Landroidx/work/c;

    iput-object v0, p0, LR0/K;->j:Landroidx/work/c;

    iget-object v0, p1, LR0/K$c;->e:Landroidx/work/a;

    iput-object v0, p0, LR0/K;->m:Landroidx/work/a;

    iget-object v0, p1, LR0/K$c;->f:Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v0

    iput-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->E()LZ0/b;

    move-result-object v0

    iput-object v0, p0, LR0/K;->q:LZ0/b;

    invoke-static {p1}, LR0/K$c;->a(LR0/K$c;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LR0/K;->r:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LR0/K;Ly2/a;)V
    .locals 0

    invoke-virtual {p0, p1}, LR0/K;->i(Ly2/a;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " } ]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ly2/a;
    .locals 1

    iget-object v0, p0, LR0/K;->t:Lb1/c;

    return-object v0
.end method

.method public d()LZ0/m;
    .locals 1

    iget-object v0, p0, LR0/K;->i:LZ0/u;

    invoke-static {v0}, LZ0/x;->a(LZ0/u;)LZ0/m;

    move-result-object v0

    return-object v0
.end method

.method public e()LZ0/u;
    .locals 1

    iget-object v0, p0, LR0/K;->i:LZ0/u;

    return-object v0
.end method

.method public final f(Landroidx/work/c$a;)V
    .locals 3

    instance-of v0, p1, Landroidx/work/c$a$c;

    if-eqz v0, :cond_1

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object p1

    sget-object v0, LR0/K;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result SUCCESS for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LR0/K;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LQ0/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {p1}, LZ0/u;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LR0/K;->l()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LR0/K;->q()V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroidx/work/c$a$b;

    if-eqz p1, :cond_2

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object p1

    sget-object v0, LR0/K;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result RETRY for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LR0/K;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LQ0/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LR0/K;->k()V

    goto :goto_0

    :cond_2
    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object p1

    sget-object v0, LR0/K;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result FAILURE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LR0/K;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LQ0/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {p1}, LZ0/u;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LR0/K;->l()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LR0/K;->p()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LR0/K;->v:Z

    invoke-virtual {p0}, LR0/K;->r()Z

    iget-object v1, p0, LR0/K;->u:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/a;->cancel(Z)Z

    iget-object v0, p0, LR0/K;->j:Landroidx/work/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, LR0/K;->u:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LR0/K;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->n()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already done. Not interrupting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    sget-object v2, LR0/K;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    invoke-interface {v1, p1}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v1

    sget-object v2, LQ0/s;->j:LQ0/s;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    sget-object v2, LQ0/s;->h:LQ0/s;

    invoke-interface {v1, v2, p1}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, LR0/K;->q:LZ0/b;

    invoke-interface {v1, p1}, LZ0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic i(Ly2/a;)V
    .locals 1

    iget-object v0, p0, LR0/K;->u:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    invoke-virtual {p0}, LR0/K;->r()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->I()LZ0/r;

    move-result-object v1

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, LZ0/r;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v1, LQ0/s;->f:LQ0/s;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LR0/K;->l:Landroidx/work/c$a;

    invoke-virtual {p0, v0}, LR0/K;->f(Landroidx/work/c$a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LQ0/s;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LR0/K;->k()V

    :cond_2
    :goto_0
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    goto :goto_2

    :goto_1
    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, LR0/K;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/t;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, LR0/t;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, LR0/K;->m:Landroidx/work/a;

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, LR0/K;->g:Ljava/util/List;

    invoke-static {v0, v1, v2}, LR0/u;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, LR0/K;->p:LZ0/v;

    sget-object v2, LQ0/s;->e:LQ0/s;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, LZ0/v;->p(Ljava/lang/String;J)V

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, LZ0/v;->f(Ljava/lang/String;J)I

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    throw v1
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, LZ0/v;->p(Ljava/lang/String;J)V

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    sget-object v2, LQ0/s;->e:LQ0/s;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, LZ0/v;->o(Ljava/lang/String;)I

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, LZ0/v;->d(Ljava/lang/String;)V

    iget-object v1, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, LZ0/v;->f(Ljava/lang/String;J)I

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    throw v1
.end method

.method public final m(Z)V
    .locals 4

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v0

    invoke-interface {v0}, LZ0/v;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LR0/K;->e:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La1/p;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    sget-object v1, LQ0/s;->e:LQ0/s;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, LZ0/v;->f(Ljava/lang/String;J)I

    :cond_1
    iget-object v0, p0, LR0/K;->i:LZ0/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, LR0/K;->j:Landroidx/work/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, LR0/K;->n:LY0/a;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LY0/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LR0/K;->n:LY0/a;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LY0/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    iget-object v0, p0, LR0/K;->t:Lb1/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void

    :goto_1
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    throw p1
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v0

    sget-object v1, LQ0/s;->f:LQ0/s;

    const-string v2, "Status for "

    if-ne v0, v1, :cond_0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    sget-object v3, LR0/K;->w:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 15

    invoke-virtual {p0}, LR0/K;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LR0/K;->i:LZ0/u;

    iget-object v1, v0, LZ0/u;->b:LQ0/s;

    sget-object v2, LQ0/s;->e:LQ0/s;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, LR0/K;->n()V

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->B()V

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :try_start_1
    invoke-virtual {v0}, LZ0/u;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {v0}, LZ0/u;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {v2}, LZ0/u;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->i()V

    iget-object v0, p0, LR0/K;->i:LZ0/u;

    invoke-virtual {v0}, LZ0/u;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LR0/K;->i:LZ0/u;

    iget-object v0, v0, LZ0/u;->e:Landroidx/work/b;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, LR0/K;->m:Landroidx/work/a;

    invoke-virtual {v0}, Landroidx/work/a;->f()LQ0/h;

    move-result-object v0

    iget-object v1, p0, LR0/K;->i:LZ0/u;

    iget-object v1, v1, LZ0/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQ0/h;->b(Ljava/lang/String;)LQ0/g;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Input Merger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LR0/K;->p()V

    return-void

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LR0/K;->i:LZ0/u;

    iget-object v2, v2, LZ0/u;->e:Landroidx/work/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LR0/K;->p:LZ0/v;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, LZ0/v;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, LQ0/g;->b(Ljava/util/List;)Landroidx/work/b;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v4, p0, LR0/K;->r:Ljava/util/List;

    iget-object v5, p0, LR0/K;->h:Landroidx/work/WorkerParameters$a;

    iget-object v1, p0, LR0/K;->i:LZ0/u;

    iget v6, v1, LZ0/u;->k:I

    invoke-virtual {v1}, LZ0/u;->d()I

    move-result v7

    iget-object v1, p0, LR0/K;->m:Landroidx/work/a;

    invoke-virtual {v1}, Landroidx/work/a;->d()Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v9, p0, LR0/K;->k:Lc1/b;

    iget-object v1, p0, LR0/K;->m:Landroidx/work/a;

    invoke-virtual {v1}, Landroidx/work/a;->n()LQ0/v;

    move-result-object v10

    new-instance v11, La1/B;

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, LR0/K;->k:Lc1/b;

    invoke-direct {v11, v1, v12}, La1/B;-><init>(Landroidx/work/impl/WorkDatabase;Lc1/b;)V

    new-instance v12, La1/A;

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, LR0/K;->n:LY0/a;

    iget-object v14, p0, LR0/K;->k:Lc1/b;

    invoke-direct {v12, v1, v13, v14}, La1/A;-><init>(Landroidx/work/impl/WorkDatabase;LY0/a;Lc1/b;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lc1/b;LQ0/v;LQ0/o;LQ0/f;)V

    iget-object v1, p0, LR0/K;->j:Landroidx/work/c;

    if-nez v1, :cond_6

    iget-object v1, p0, LR0/K;->m:Landroidx/work/a;

    invoke-virtual {v1}, Landroidx/work/a;->n()LQ0/v;

    move-result-object v1

    iget-object v2, p0, LR0/K;->e:Landroid/content/Context;

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, LQ0/v;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/c;

    move-result-object v1

    iput-object v1, p0, LR0/K;->j:Landroidx/work/c;

    :cond_6
    iget-object v1, p0, LR0/K;->j:Landroidx/work/c;

    if-nez v1, :cond_7

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Worker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LR0/K;->p()V

    return-void

    :cond_7
    invoke-virtual {v1}, Landroidx/work/c;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LR0/K;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an already-used Worker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LR0/K;->i:LZ0/u;

    iget-object v3, v3, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Worker Factory should return new instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LR0/K;->p()V

    return-void

    :cond_8
    iget-object v1, p0, LR0/K;->j:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->l()V

    invoke-virtual {p0}, LR0/K;->s()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, LR0/K;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    new-instance v1, La1/z;

    iget-object v3, p0, LR0/K;->e:Landroid/content/Context;

    iget-object v4, p0, LR0/K;->i:LZ0/u;

    iget-object v5, p0, LR0/K;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()LQ0/f;

    move-result-object v6

    iget-object v7, p0, LR0/K;->k:Lc1/b;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, La1/z;-><init>(Landroid/content/Context;LZ0/u;Landroidx/work/c;LQ0/f;Lc1/b;)V

    iget-object v0, p0, LR0/K;->k:Lc1/b;

    invoke-interface {v0}, Lc1/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, La1/z;->b()Ly2/a;

    move-result-object v0

    iget-object v1, p0, LR0/K;->u:Lb1/c;

    new-instance v2, LR0/J;

    invoke-direct {v2, p0, v0}, LR0/J;-><init>(LR0/K;Ly2/a;)V

    new-instance v3, La1/v;

    invoke-direct {v3}, La1/v;-><init>()V

    invoke-virtual {v1, v2, v3}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, LR0/K$a;

    invoke-direct {v1, p0, v0}, LR0/K$a;-><init>(LR0/K;Ly2/a;)V

    iget-object v2, p0, LR0/K;->k:Lc1/b;

    invoke-interface {v2}, Lc1/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ly2/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, LR0/K;->s:Ljava/lang/String;

    iget-object v1, p0, LR0/K;->u:Lb1/c;

    new-instance v2, LR0/K$b;

    invoke-direct {v2, p0, v0}, LR0/K$b;-><init>(LR0/K;Ljava/lang/String;)V

    iget-object v0, p0, LR0/K;->k:Lc1/b;

    invoke-interface {v0}, Lc1/b;->b()Lc1/a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, LR0/K;->n()V

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    throw v0
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, LR0/K;->h(Ljava/lang/String;)V

    iget-object v1, p0, LR0/K;->l:Landroidx/work/c$a;

    check-cast v1, Landroidx/work/c$a$a;

    invoke-virtual {v1}, Landroidx/work/c$a$a;->e()Landroidx/work/b;

    move-result-object v1

    iget-object v2, p0, LR0/K;->p:LZ0/v;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, LZ0/v;->u(Ljava/lang/String;Landroidx/work/b;)V

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    throw v1
.end method

.method public final q()V
    .locals 9

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LR0/K;->p:LZ0/v;

    sget-object v2, LQ0/s;->g:LQ0/s;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v1, p0, LR0/K;->l:Landroidx/work/c$a;

    check-cast v1, Landroidx/work/c$a$c;

    invoke-virtual {v1}, Landroidx/work/c$a$c;->e()Landroidx/work/b;

    move-result-object v1

    iget-object v2, p0, LR0/K;->p:LZ0/v;

    iget-object v3, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, LZ0/v;->u(Ljava/lang/String;Landroidx/work/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, LR0/K;->q:LZ0/b;

    iget-object v4, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v3, v4}, LZ0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, LR0/K;->p:LZ0/v;

    invoke-interface {v5, v4}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v5

    sget-object v6, LQ0/s;->i:LQ0/s;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, LR0/K;->q:LZ0/b;

    invoke-interface {v5, v4}, LZ0/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v5

    sget-object v6, LR0/K;->w:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting status to enqueued for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, LQ0/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, LR0/K;->p:LZ0/v;

    sget-object v6, LQ0/s;->e:LQ0/s;

    invoke-interface {v5, v6, v4}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v5, p0, LR0/K;->p:LZ0/v;

    invoke-interface {v5, v4, v1, v2}, LZ0/v;->p(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    return-void

    :goto_1
    iget-object v2, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lu0/u;->i()V

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    throw v1
.end method

.method public final r()Z
    .locals 5

    iget-boolean v0, p0, LR0/K;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v2, LR0/K;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Work interrupted for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LR0/K;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, LR0/K;->m(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LQ0/s;->f()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, LR0/K;->m(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LR0/K;->r:Ljava/util/List;

    invoke-virtual {p0, v0}, LR0/K;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LR0/K;->s:Ljava/lang/String;

    invoke-virtual {p0}, LR0/K;->o()V

    return-void
.end method

.method public final s()Z
    .locals 3

    iget-object v0, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v0

    sget-object v1, LQ0/s;->e:LQ0/s;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    sget-object v1, LQ0/s;->f:LQ0/s;

    iget-object v2, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    iget-object v0, p0, LR0/K;->p:LZ0/v;

    iget-object v1, p0, LR0/K;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, LZ0/v;->r(Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    return v0

    :goto_1
    iget-object v1, p0, LR0/K;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lu0/u;->i()V

    throw v0
.end method
