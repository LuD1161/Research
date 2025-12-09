.class public final Lw1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/f$a;
.implements Lv1/f$b;


# instance fields
.field public final c:Ljava/util/Queue;

.field public final d:Lv1/a$f;

.field public final e:Lw1/b;

.field public final f:Lw1/o;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Map;

.field public final i:I

.field public final j:Lw1/M;

.field public k:Z

.field public final l:Ljava/util/List;

.field public m:Lu1/a;

.field public n:I

.field public final synthetic o:Lw1/e;


# direct methods
.method public constructor <init>(Lw1/e;Lv1/e;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/w;->o:Lw1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lw1/w;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw1/w;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw1/w;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw1/w;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lw1/w;->m:Lu1/a;

    const/4 v1, 0x0

    iput v1, p0, Lw1/w;->n:I

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lv1/e;->k(Landroid/os/Looper;Lw1/w;)Lv1/a$f;

    move-result-object v1

    iput-object v1, p0, Lw1/w;->d:Lv1/a$f;

    invoke-virtual {p2}, Lv1/e;->h()Lw1/b;

    move-result-object v2

    iput-object v2, p0, Lw1/w;->e:Lw1/b;

    new-instance v2, Lw1/o;

    invoke-direct {v2}, Lw1/o;-><init>()V

    iput-object v2, p0, Lw1/w;->f:Lw1/o;

    invoke-virtual {p2}, Lv1/e;->l()I

    move-result v2

    iput v2, p0, Lw1/w;->i:I

    invoke-interface {v1}, Lv1/a$f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lw1/e;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lv1/e;->m(Landroid/content/Context;Landroid/os/Handler;)Lw1/M;

    move-result-object p1

    iput-object p1, p0, Lw1/w;->j:Lw1/M;

    return-void

    :cond_0
    iput-object v0, p0, Lw1/w;->j:Lw1/M;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v0}, Lv1/a$f;->o()Z

    move-result v0

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lw1/w;->i:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lw1/w;->n:I

    return v0
.end method

.method public final D()V
    .locals 1

    iget v0, p0, Lw1/w;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw1/w;->n:I

    return-void
.end method

.method public final synthetic E()V
    .locals 0

    invoke-virtual {p0}, Lw1/w;->c()V

    return-void
.end method

.method public final synthetic F(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/w;->d(I)V

    return-void
.end method

.method public final synthetic G(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final synthetic H(Lw1/x;)V
    .locals 1

    iget-object v0, p0, Lw1/w;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lw1/w;->k:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {p1}, Lv1/a$f;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lw1/w;->z()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lw1/w;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic I(Lw1/x;)V
    .locals 6

    iget-object v0, p0, Lw1/w;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lw1/x;->b()Lu1/c;

    move-result-object p1

    iget-object v0, p0, Lw1/w;->c:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/T;

    instance-of v4, v3, Lw1/H;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lw1/H;

    invoke-virtual {v4, p0}, Lw1/H;->f(Lw1/w;)[Lu1/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, p1}, LD1/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/T;

    invoke-interface {v0, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v5, Lv1/k;

    invoke-direct {v5, p1}, Lv1/k;-><init>(Lu1/c;)V

    invoke-virtual {v4, v5}, Lw1/T;->b(Ljava/lang/Exception;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final synthetic J()Lv1/a$f;
    .locals 1

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    return-object v0
.end method

.method public final synthetic a()Lw1/b;
    .locals 1

    iget-object v0, p0, Lw1/w;->e:Lw1/b;

    return-object v0
.end method

.method public final synthetic b()Z
    .locals 1

    iget-boolean v0, p0, Lw1/w;->k:Z

    return v0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lw1/w;->v()V

    sget-object v0, Lu1/a;->i:Lu1/a;

    invoke-virtual {p0, v0}, Lw1/w;->n(Lu1/a;)V

    invoke-virtual {p0}, Lw1/w;->k()V

    iget-object v0, p0, Lw1/w;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lw1/w;->f()V

    invoke-virtual {p0}, Lw1/w;->l()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(I)V
    .locals 5

    invoke-virtual {p0}, Lw1/w;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw1/w;->k:Z

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v0}, Lv1/a$f;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw1/w;->f:Lw1/o;

    invoke-virtual {v1, p1, v0}, Lw1/o;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lw1/w;->e:Lw1/b;

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0}, Lw1/e;->b()Lz1/C;

    move-result-object p1

    invoke-virtual {p1}, Lz1/C;->c()V

    iget-object p1, p0, Lw1/w;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lu1/a;)Z
    .locals 4

    invoke-static {}, Lw1/e;->D()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v1}, Lw1/e;->d()Lw1/p;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lw1/e;->e()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lw1/w;->e:Lw1/b;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lw1/e;->d()Lw1/p;

    move-result-object v1

    iget v2, p0, Lw1/w;->i:I

    invoke-virtual {v1, p1, v2}, Lw1/Y;->q(Lu1/a;I)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lw1/w;->c:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/T;

    iget-object v5, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v5}, Lv1/a$f;->b()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lw1/w;->g(Lw1/T;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Lw1/T;)Z
    .locals 10

    instance-of v0, p1, Lw1/H;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lw1/w;->h(Lw1/T;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lw1/H;

    invoke-virtual {v0, p0}, Lw1/H;->f(Lw1/w;)[Lu1/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw1/w;->o([Lu1/c;)Lu1/c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lw1/w;->h(Lw1/T;)V

    return v1

    :cond_1
    iget-object p1, p0, Lw1/w;->d:Lv1/a$f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lu1/c;->e()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x35

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v7

    const/4 v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {p1}, Lw1/e;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, p0}, Lw1/H;->g(Lw1/w;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lw1/w;->e:Lw1/b;

    new-instance v1, Lw1/x;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v4}, Lw1/x;-><init>(Lw1/b;Lu1/c;[B)V

    iget-object v0, p0, Lw1/w;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const-wide/16 v8, 0x1388

    const/16 v6, 0xf

    if-ltz v5, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/x;

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    const/16 v5, 0x10

    invoke-static {v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Lu1/a;

    invoke-direct {v0, v7, v4}, Lu1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lw1/w;->e(Lu1/a;)Z

    move-result v1

    const-string v4, ", version: "

    if-nez v1, :cond_3

    iget v1, p0, Lw1/w;->i:I

    invoke-virtual {p1, v0, v1}, Lw1/e;->w(Lu1/a;I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lu1/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lu1/c;->e()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x37

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notification displayed for missing feature: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lu1/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lu1/c;->e()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x3d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "A dialog should be displayed for missing feature: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_5
    new-instance p1, Lv1/k;

    invoke-direct {p1, v2}, Lv1/k;-><init>(Lu1/c;)V

    invoke-virtual {v0, p1}, Lw1/T;->b(Ljava/lang/Exception;)V

    return v1
.end method

.method public final h(Lw1/T;)V
    .locals 2

    iget-object v0, p0, Lw1/w;->f:Lw1/o;

    invoke-virtual {p0}, Lw1/w;->A()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lw1/T;->c(Lw1/o;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lw1/T;->d(Lw1/w;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lw1/w;->onConnectionSuspended(I)V

    iget-object p1, p0, Lw1/w;->d:Lv1/a$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lv1/a$f;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lw1/w;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/T;

    if-eqz p3, :cond_3

    iget v2, v1, Lw1/T;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lw1/T;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Lw1/T;->b(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lw1/w;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-boolean v0, p0, Lw1/w;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    iget-object v1, p0, Lw1/w;->e:Lw1/b;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw1/w;->k:Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lw1/w;->e:Lw1/b;

    iget-object v1, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Lw1/e;->B()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final m(Z)Z
    .locals 2

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v0}, Lv1/a$f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw1/w;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw1/w;->f:Lw1/o;

    invoke-virtual {v1}, Lw1/o;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lw1/w;->l()V

    goto :goto_0

    :cond_0
    const-string p1, "Timing out service connection."

    invoke-interface {v0, p1}, Lv1/a$f;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Lu1/a;)V
    .locals 3

    iget-object v0, p0, Lw1/w;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    sget-object v0, Lu1/a;->i:Lu1/a;

    invoke-static {p1, v0}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {p1}, Lv1/a$f;->l()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final o([Lu1/c;)Lu1/c;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v1}, Lv1/a$f;->k()[Lu1/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lu1/c;

    :cond_1
    new-instance v3, Lv/a;

    array-length v4, v1

    invoke-direct {v3, v4}, Lv/a;-><init>(I)V

    move v4, v2

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lu1/c;->e()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lu1/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lu1/c;->e()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lw1/w;->c()V

    return-void

    :cond_0
    new-instance v0, Lw1/s;

    invoke-direct {v0, p0}, Lw1/s;-><init>(Lw1/w;)V

    invoke-virtual {p1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lu1/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, p1}, Lw1/w;->d(I)V

    return-void

    :cond_0
    new-instance v1, Lw1/t;

    invoke-direct {v1, p0, p1}, Lw1/t;-><init>(Lw1/w;I)V

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Lu1/a;)V
    .locals 6

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSignInFailed for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv1/a$f;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public final q(Lu1/a;Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-object v1, p0, Lw1/w;->j:Lw1/M;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lw1/M;->J()V

    :cond_0
    invoke-virtual {p0}, Lw1/w;->v()V

    invoke-virtual {v0}, Lw1/e;->b()Lz1/C;

    move-result-object v1

    invoke-virtual {v1}, Lz1/C;->c()V

    invoke-virtual {p0, p1}, Lw1/w;->n(Lu1/a;)V

    iget-object v1, p0, Lw1/w;->d:Lv1/a$f;

    instance-of v1, v1, LB1/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v2}, Lw1/e;->C(Z)V

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    invoke-static {}, Lw1/e;->A()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v1

    const/16 v3, 0x19

    if-ne v1, v3, :cond_3

    iget-object p2, p0, Lw1/w;->e:Lw1/b;

    invoke-static {p2, p1}, Lw1/e;->z(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_3
    iget-object v1, p0, Lw1/w;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object p1, p0, Lw1/w;->m:Lu1/a;

    return-void

    :cond_4
    const/4 v3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lz1/o;->c(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p2, p1}, Lw1/w;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lw1/e;->g()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lw1/w;->e:Lw1/b;

    invoke-static {p2, p1}, Lw1/e;->z(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v2}, Lw1/w;->i(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lw1/w;->e(Lu1/a;)Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lw1/w;->i:I

    invoke-virtual {v0, p1, v1}, Lw1/e;->w(Lu1/a;I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_7

    iput-boolean v2, p0, Lw1/w;->k:Z

    :cond_7
    iget-boolean v1, p0, Lw1/w;->k:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    invoke-static {p2, p1}, Lw1/e;->z(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    :goto_0
    return-void

    :cond_a
    iget-object p2, p0, Lw1/w;->e:Lw1/b;

    invoke-static {p2, p1}, Lw1/e;->z(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final r(Lw1/T;)V
    .locals 1

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v0}, Lv1/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lw1/w;->g(Lw1/T;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw1/w;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Lw1/w;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lw1/w;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lw1/w;->m:Lu1/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lu1/a;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lw1/w;->m:Lu1/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lw1/w;->z()V

    return-void
.end method

.method public final s()V
    .locals 6

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    sget-object v0, Lw1/e;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lw1/w;->f:Lw1/o;

    invoke-virtual {v0}, Lw1/o;->d()V

    iget-object v0, p0, Lw1/w;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lw1/i;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw1/i;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v3, Lw1/S;

    new-instance v4, LR1/g;

    invoke-direct {v4}, LR1/g;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lw1/S;-><init>(Lw1/i;LR1/g;)V

    invoke-virtual {p0, v3}, Lw1/w;->r(Lw1/T;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lu1/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu1/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lw1/w;->n(Lu1/a;)V

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v0}, Lv1/a$f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lw1/v;

    invoke-direct {v1, p0}, Lw1/v;-><init>(Lw1/w;)V

    invoke-interface {v0, v1}, Lv1/a$f;->h(Lz1/d$e;)V

    :cond_1
    return-void
.end method

.method public final t()Lv1/a$f;
    .locals 1

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    return-object v0
.end method

.method public final u()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/w;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lw1/w;->m:Lu1/a;

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lw1/w;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw1/w;->z()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lz1/o;->c(Landroid/os/Handler;)V

    iget-boolean v1, p0, Lw1/w;->k:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lw1/w;->k()V

    invoke-virtual {v0}, Lw1/e;->E()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lw1/e;->a()Lu1/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu1/d;->f(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lw1/w;->j(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lw1/w;->d:Lv1/a$f;

    const-string v1, "Timing out connection while resuming."

    invoke-interface {v0, v1}, Lv1/a$f;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw1/w;->m(Z)Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 10

    iget-object v0, p0, Lw1/w;->o:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lz1/o;->c(Landroid/os/Handler;)V

    const-string v1, " is not available: "

    const-string v2, "The service for "

    iget-object v3, p0, Lw1/w;->d:Lv1/a$f;

    invoke-interface {v3}, Lv1/a$f;->b()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Lv1/a$f;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0xa

    :try_start_0
    invoke-virtual {v0}, Lw1/e;->b()Lz1/C;

    move-result-object v5

    invoke-virtual {v0}, Lw1/e;->E()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lz1/C;->a(Landroid/content/Context;Lv1/a$f;)I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lu1/a;

    const/4 v3, 0x0

    invoke-direct {v0, v5, v3}, Lu1/a;-><init>(ILandroid/app/PendingIntent;)V

    const-string v5, "GoogleApiManager"

    iget-object v6, p0, Lw1/w;->d:Lv1/a$f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x23

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v3}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lw1/w;->e:Lw1/b;

    new-instance v2, Lw1/z;

    invoke-direct {v2, v0, v3, v1}, Lw1/z;-><init>(Lw1/e;Lv1/a$f;Lw1/b;)V

    invoke-interface {v3}, Lv1/a$f;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw1/w;->j:Lw1/M;

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/M;

    invoke-virtual {v0, v2}, Lw1/M;->I(Lw1/L;)V

    :cond_2
    :try_start_1
    invoke-interface {v3, v2}, Lv1/a$f;->a(Lz1/d$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lu1/a;

    invoke-direct {v1, v4}, Lu1/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void

    :goto_0
    new-instance v1, Lu1/a;

    invoke-direct {v1, v4}, Lu1/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method
