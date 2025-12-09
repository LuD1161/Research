.class public Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Lcom/google/android/gms/common/api/Status;

.field public static final r:Ljava/lang/Object;

.field public static s:Lw1/e;

.field public static volatile t:Z


# instance fields
.field public a:J

.field public b:Z

.field public c:Lz1/r;

.field public d:Lz1/t;

.field public final e:Landroid/content/Context;

.field public final f:Lu1/d;

.field public final g:Lz1/C;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public k:Lw1/p;

.field public final l:Ljava/util/Set;

.field public final m:Ljava/util/Set;

.field public final n:Landroid/os/Handler;

.field public volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lw1/e;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lw1/e;->q:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw1/e;->r:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lw1/e;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lu1/d;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lw1/e;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw1/e;->b:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lw1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lw1/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lw1/e;->j:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lw1/e;->k:Lw1/p;

    new-instance v1, Lv/b;

    invoke-direct {v1}, Lv/b;-><init>()V

    iput-object v1, p0, Lw1/e;->l:Ljava/util/Set;

    new-instance v1, Lv/b;

    invoke-direct {v1}, Lv/b;-><init>()V

    iput-object v1, p0, Lw1/e;->m:Ljava/util/Set;

    iput-boolean v2, p0, Lw1/e;->o:Z

    iput-object p1, p0, Lw1/e;->e:Landroid/content/Context;

    new-instance v1, LJ1/f;

    invoke-direct {v1, p2, p0}, LJ1/f;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lw1/e;->n:Landroid/os/Handler;

    iput-object p3, p0, Lw1/e;->f:Lu1/d;

    new-instance p2, Lz1/C;

    invoke-direct {p2, p3}, Lz1/C;-><init>(Lu1/e;)V

    iput-object p2, p0, Lw1/e;->g:Lz1/C;

    invoke-static {p1}, LD1/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lw1/e;->o:Z

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lw1/e;->q:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public static synthetic D()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw1/e;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public static j(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lw1/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lu1/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Lw1/e;
    .locals 4

    sget-object v0, Lw1/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw1/e;->s:Lw1/e;

    if-nez v1, :cond_0

    invoke-static {}, Lz1/i;->b()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lw1/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lu1/d;->m()Lu1/d;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lw1/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lu1/d;)V

    sput-object v2, Lw1/e;->s:Lw1/e;

    sget-boolean p0, Lw1/e;->t:Z

    if-eqz p0, :cond_0

    sget-object p0, Lw1/e;->s:Lw1/e;

    iget-object p0, p0, Lw1/e;->n:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lw1/A;

    invoke-direct {v1, p0}, Lw1/A;-><init>(Landroid/os/Handler;)V

    invoke-static {v1}, Lz1/h;->k0(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lw1/e;->s:Lw1/e;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic z(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Lw1/e;->j(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic B()J
    .locals 2

    iget-wide v0, p0, Lw1/e;->a:J

    return-wide v0
.end method

.method public final synthetic C(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw1/e;->b:Z

    return-void
.end method

.method public final synthetic E()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lw1/e;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final synthetic a()Lu1/d;
    .locals 1

    iget-object v0, p0, Lw1/e;->f:Lu1/d;

    return-object v0
.end method

.method public final synthetic b()Lz1/C;
    .locals 1

    iget-object v0, p0, Lw1/e;->g:Lz1/C;

    return-object v0
.end method

.method public final synthetic c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final synthetic d()Lw1/p;
    .locals 1

    iget-object v0, p0, Lw1/e;->k:Lw1/p;

    return-object v0
.end method

.method public final synthetic e()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lw1/e;->l:Ljava/util/Set;

    return-object v0
.end method

.method public final synthetic f()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lw1/e;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public final synthetic g()Z
    .locals 1

    iget-boolean v0, p0, Lw1/e;->o:Z

    return v0
.end method

.method public final h(Lv1/e;)Lw1/w;
    .locals 3

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lv1/e;->h()Lw1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/w;

    if-nez v2, :cond_0

    new-instance v2, Lw1/w;

    invoke-direct {v2, p0, p1}, Lw1/w;-><init>(Lw1/e;Lv1/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Lw1/w;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw1/e;->m:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lw1/w;->z()V

    return-object v2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x0

    const-string v4, "GoogleApiManager"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x14

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    iput-boolean v3, p0, Lw1/e;->b:Z

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw1/G;

    iget-wide v0, p1, Lw1/G;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Lz1/r;

    iget v1, p1, Lw1/G;->b:I

    iget-object p1, p1, Lw1/G;->a:Lz1/m;

    filled-new-array {p1}, [Lz1/m;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lz1/r;-><init>(ILjava/util/List;)V

    invoke-virtual {p0}, Lw1/e;->l()Lz1/t;

    move-result-object p1

    invoke-interface {p1, v0}, Lz1/t;->a(Lz1/r;)LR1/f;

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lw1/e;->c:Lz1/r;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lz1/r;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lz1/r;->d()I

    move-result v2

    iget v4, p1, Lw1/G;->b:I

    if-ne v2, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p1, Lw1/G;->d:I

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lw1/e;->c:Lz1/r;

    iget-object v3, p1, Lw1/G;->a:Lz1/m;

    invoke-virtual {v2, v3}, Lz1/r;->g(Lz1/m;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lw1/e;->n:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lw1/e;->k()V

    :cond_3
    :goto_1
    iget-object v2, p0, Lw1/e;->c:Lz1/r;

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lw1/G;->a:Lz1/m;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lz1/r;

    iget p1, p1, Lw1/G;->b:I

    invoke-direct {v3, p1, v2}, Lz1/r;-><init>(ILjava/util/List;)V

    iput-object v3, p0, Lw1/e;->c:Lz1/r;

    iget-object p1, p0, Lw1/e;->n:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Lw1/e;->k()V

    goto/16 :goto_6

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw1/x;

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lw1/x;->a()Lw1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lw1/x;->a()Lw1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    invoke-virtual {v0, p1}, Lw1/w;->I(Lw1/x;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw1/x;

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lw1/x;->a()Lw1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lw1/x;->a()Lw1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    invoke-virtual {v0, p1}, Lw1/w;->H(Lw1/x;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    throw v6

    :pswitch_6
    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/w;

    invoke-virtual {p1}, Lw1/w;->y()Z

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/w;

    invoke-virtual {p1}, Lw1/w;->x()V

    goto/16 :goto_6

    :pswitch_8
    iget-object p1, p0, Lw1/e;->m:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/b;

    iget-object v2, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/w;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lw1/w;->s()V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_6

    :pswitch_9
    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/w;

    invoke-virtual {p1}, Lw1/w;->w()V

    goto/16 :goto_6

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv1/e;

    invoke-virtual {p0, p1}, Lw1/e;->h(Lv1/e;)Lw1/w;

    goto/16 :goto_6

    :pswitch_b
    iget-object p1, p0, Lw1/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lw1/c;->c(Landroid/app/Application;)V

    invoke-static {}, Lw1/c;->b()Lw1/c;

    move-result-object p1

    new-instance v0, Lw1/r;

    invoke-direct {v0, p0}, Lw1/r;-><init>(Lw1/e;)V

    invoke-virtual {p1, v0}, Lw1/c;->a(Lw1/c$a;)V

    invoke-static {}, Lw1/c;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lw1/c;->e(Z)Z

    move-result p1

    if-nez p1, :cond_d

    iput-wide v1, p0, Lw1/e;->a:J

    goto/16 :goto_6

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu1/a;

    iget-object v1, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/w;

    invoke-virtual {v2}, Lw1/w;->B()I

    move-result v3

    if-ne v3, v0, :cond_6

    move-object v6, v2

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lw1/e;->f:Lu1/d;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lu1/a;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lu1/d;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lu1/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x45

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v7, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v1}, Lw1/w;->G(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v6}, Lw1/w;->a()Lw1/b;

    move-result-object v0

    invoke-static {v0, p1}, Lw1/e;->j(Lw1/b;Lu1/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v6, p1}, Lw1/w;->G(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x41

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw1/I;

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    iget-object v1, p1, Lw1/I;->c:Lv1/e;

    invoke-virtual {v1}, Lv1/e;->h()Lw1/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Lw1/e;->h(Lv1/e;)Lw1/w;

    move-result-object v0

    :cond_a
    invoke-virtual {v0}, Lw1/w;->A()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lw1/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lw1/I;->b:I

    if-eq v1, v2, :cond_b

    iget-object p1, p1, Lw1/I;->a:Lw1/T;

    sget-object v1, Lw1/e;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lw1/T;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lw1/w;->s()V

    goto :goto_6

    :cond_b
    iget-object p1, p1, Lw1/I;->a:Lw1/T;

    invoke-virtual {v0, p1}, Lw1/w;->r(Lw1/T;)V

    goto :goto_6

    :pswitch_e
    iget-object p1, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/w;

    invoke-virtual {v0}, Lw1/w;->v()V

    invoke-virtual {v0}, Lw1/w;->z()V

    goto :goto_3

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    throw v6

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v5, p1, :cond_c

    goto :goto_4

    :cond_c
    const-wide/16 v1, 0x2710

    :goto_4
    iput-wide v1, p0, Lw1/e;->a:J

    iget-object p1, p0, Lw1/e;->n:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/b;

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lw1/e;->a:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_d
    :goto_6
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(LR1/g;ILv1/e;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lv1/e;->h()Lw1/b;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lw1/F;->b(Lw1/e;ILw1/b;)Lw1/F;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LR1/g;->a()LR1/f;

    move-result-object p1

    iget-object p3, p0, Lw1/e;->n:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw1/B;

    invoke-direct {v0, p3}, Lw1/B;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p2}, LR1/f;->b(Ljava/util/concurrent/Executor;LR1/b;)LR1/f;

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lw1/e;->c:Lz1/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz1/r;->d()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lw1/e;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lw1/e;->l()Lz1/t;

    move-result-object v1

    invoke-interface {v1, v0}, Lz1/t;->a(Lz1/r;)LR1/f;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lw1/e;->c:Lz1/r;

    :cond_2
    return-void
.end method

.method public final l()Lz1/t;
    .locals 1

    iget-object v0, p0, Lw1/e;->d:Lz1/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lz1/s;->a(Landroid/content/Context;)Lz1/t;

    move-result-object v0

    iput-object v0, p0, Lw1/e;->d:Lz1/t;

    :cond_0
    iget-object v0, p0, Lw1/e;->d:Lz1/t;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lw1/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final o(Lv1/e;)V
    .locals 2

    iget-object v0, p0, Lw1/e;->n:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final p(Lw1/p;)V
    .locals 2

    sget-object v0, Lw1/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw1/e;->k:Lw1/p;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lw1/e;->k:Lw1/p;

    iget-object v1, p0, Lw1/e;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lw1/e;->l:Ljava/util/Set;

    invoke-virtual {p1}, Lw1/p;->u()Lv/b;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q(Lw1/p;)V
    .locals 2

    sget-object v0, Lw1/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw1/e;->k:Lw1/p;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lw1/e;->k:Lw1/p;

    iget-object p1, p0, Lw1/e;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lw1/b;)Lw1/w;
    .locals 1

    iget-object v0, p0, Lw1/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/w;

    return-object p1
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lw1/e;->n:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final t(Lv1/e;ILcom/google/android/gms/common/api/internal/a;)V
    .locals 1

    new-instance v0, Lw1/P;

    invoke-direct {v0, p2, p3}, Lw1/P;-><init>(ILcom/google/android/gms/common/api/internal/a;)V

    iget-object p2, p0, Lw1/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lw1/I;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, Lw1/I;-><init>(Lw1/T;ILv1/e;)V

    iget-object p1, p0, Lw1/e;->n:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final u(Lv1/e;ILw1/n;LR1/g;Lw1/l;)V
    .locals 1

    invoke-virtual {p3}, Lw1/n;->e()I

    move-result v0

    invoke-virtual {p0, p4, v0, p1}, Lw1/e;->i(LR1/g;ILv1/e;)V

    new-instance v0, Lw1/Q;

    invoke-direct {v0, p2, p3, p4, p5}, Lw1/Q;-><init>(ILw1/n;LR1/g;Lw1/l;)V

    iget-object p2, p0, Lw1/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lw1/I;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, Lw1/I;-><init>(Lw1/T;ILv1/e;)V

    iget-object p1, p0, Lw1/e;->n:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final v()Z
    .locals 4

    iget-boolean v0, p0, Lw1/e;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lz1/p;->b()Lz1/p;

    move-result-object v0

    invoke-virtual {v0}, Lz1/p;->a()Lz1/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz1/q;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lw1/e;->g:Lz1/C;

    iget-object v2, p0, Lw1/e;->e:Landroid/content/Context;

    const v3, 0xc1fa340

    invoke-virtual {v0, v2, v3}, Lz1/C;->b(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final w(Lu1/a;I)Z
    .locals 2

    iget-object v0, p0, Lw1/e;->f:Lu1/d;

    iget-object v1, p0, Lw1/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lu1/d;->s(Landroid/content/Context;Lu1/a;I)Z

    move-result p1

    return p1
.end method

.method public final x(Lu1/a;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lw1/e;->w(Lu1/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/e;->n:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final y(Lz1/m;IJI)V
    .locals 7

    new-instance v6, Lw1/G;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lw1/G;-><init>(Lz1/m;IJI)V

    iget-object p1, p0, Lw1/e;->n:Landroid/os/Handler;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
