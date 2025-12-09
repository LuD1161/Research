.class public final LG3/s;
.super LH3/b;
.source "SourceFile"

# interfaces
.implements LG3/n;
.implements LG3/d;
.implements LH3/k;


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, LG3/s;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LG3/s;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LH3/b;-><init>()V

    iput-object p1, p0, LG3/s;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ll3/i;ILF3/a;)LG3/d;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LG3/t;->d(LG3/r;Ll3/i;ILF3/a;)LG3/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LG3/s;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, LG3/s$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LG3/s$a;

    iget v1, v0, LG3/s$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/s$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/s$a;

    invoke-direct {v0, p0, p2}, LG3/s$a;-><init>(LG3/s;Ll3/e;)V

    :goto_0
    iget-object p2, v0, LG3/s$a;->m:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/s$a;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    if-eq v2, p1, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, LG3/s$a;->l:Ljava/lang/Object;

    iget-object v2, v0, LG3/s$a;->k:Ljava/lang/Object;

    check-cast v2, LD3/p0;

    iget-object v6, v0, LG3/s$a;->j:Ljava/lang/Object;

    check-cast v6, LG3/u;

    iget-object v7, v0, LG3/s$a;->i:Ljava/lang/Object;

    check-cast v7, LG3/e;

    iget-object v8, v0, LG3/s$a;->h:Ljava/lang/Object;

    check-cast v8, LG3/s;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LG3/s$a;->l:Ljava/lang/Object;

    iget-object v2, v0, LG3/s$a;->k:Ljava/lang/Object;

    check-cast v2, LD3/p0;

    iget-object v6, v0, LG3/s$a;->j:Ljava/lang/Object;

    check-cast v6, LG3/u;

    iget-object v7, v0, LG3/s$a;->i:Ljava/lang/Object;

    check-cast v7, LG3/e;

    iget-object v8, v0, LG3/s$a;->h:Ljava/lang/Object;

    check-cast v8, LG3/s;

    :try_start_1
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_3
    iget-object p1, v0, LG3/s$a;->j:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, LG3/u;

    iget-object p1, v0, LG3/s$a;->i:Ljava/lang/Object;

    check-cast p1, LG3/e;

    iget-object v2, v0, LG3/s$a;->h:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, LG3/s;

    :try_start_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, LH3/b;->d()LH3/d;

    move-result-object p2

    check-cast p2, LG3/u;

    move-object v8, p0

    move-object v6, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object p2

    sget-object v2, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p2, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p2

    check-cast p2, LD3/p0;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    :cond_5
    :goto_2
    sget-object p2, LG3/s;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_6

    invoke-static {v2}, LD3/t0;->d(LD3/p0;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_7
    sget-object p1, LH3/m;->a:LI3/F;

    if-ne p2, p1, :cond_8

    move-object p1, v3

    goto :goto_3

    :cond_8
    move-object p1, p2

    :goto_3
    iput-object v8, v0, LG3/s$a;->h:Ljava/lang/Object;

    iput-object v7, v0, LG3/s$a;->i:Ljava/lang/Object;

    iput-object v6, v0, LG3/s$a;->j:Ljava/lang/Object;

    iput-object v2, v0, LG3/s$a;->k:Ljava/lang/Object;

    iput-object p2, v0, LG3/s$a;->l:Ljava/lang/Object;

    iput v5, v0, LG3/s$a;->o:I

    invoke-interface {v7, p1, v0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p2

    :cond_a
    :goto_4
    invoke-virtual {v6}, LG3/u;->h()Z

    move-result p2

    if-nez p2, :cond_5

    iput-object v8, v0, LG3/s$a;->h:Ljava/lang/Object;

    iput-object v7, v0, LG3/s$a;->i:Ljava/lang/Object;

    iput-object v6, v0, LG3/s$a;->j:Ljava/lang/Object;

    iput-object v2, v0, LG3/s$a;->k:Ljava/lang/Object;

    iput-object p1, v0, LG3/s$a;->l:Ljava/lang/Object;

    iput v4, v0, LG3/s$a;->o:I

    invoke-virtual {v6, v0}, LG3/u;->e(Ll3/e;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :goto_5
    invoke-virtual {v8, v6}, LH3/b;->h(LH3/d;)V

    throw p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, LH3/m;->a:LI3/F;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, LH3/m;->a:LI3/F;

    :cond_1
    invoke-virtual {p0, p1, p2}, LG3/s;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f()LH3/d;
    .locals 1

    invoke-virtual {p0}, LG3/s;->j()LG3/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(I)[LH3/d;
    .locals 0

    invoke-virtual {p0, p1}, LG3/s;->k(I)[LG3/u;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, LH3/m;->a:LI3/F;

    sget-object v1, LG3/s;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public j()LG3/u;
    .locals 1

    new-instance v0, LG3/u;

    invoke-direct {v0}, LG3/u;-><init>()V

    return-object v0
.end method

.method public k(I)[LG3/u;
    .locals 0

    new-array p1, p1, [LG3/u;

    return-object p1
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, LG3/s;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {v2, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {v2, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, LG3/s;->h:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5

    add-int/2addr p1, v0

    iput p1, p0, LG3/s;->h:I

    invoke-virtual {p0}, LH3/b;->i()[LH3/d;

    move-result-object p2

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [LG3/u;

    if-eqz p2, :cond_3

    array-length v1, p2

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, p2, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, LG3/u;->g()V

    :cond_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget p2, p0, LG3/s;->h:I

    if-ne p2, p1, :cond_4

    add-int/2addr p1, v0

    iput p1, p0, LG3/s;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {p0}, LH3/b;->i()[LH3/d;

    move-result-object p1

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :goto_2
    monitor-exit p0

    throw p1

    :cond_5
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, LG3/s;->h:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LH3/m;->a:LI3/F;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, LG3/s;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
