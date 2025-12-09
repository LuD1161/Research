.class public final LD3/S;
.super LI3/B;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LD3/S;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LD3/S;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ll3/i;Ll3/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI3/B;-><init>(Ll3/i;Ll3/e;)V

    return-void
.end method

.method private final U0()Z
    .locals 5

    sget-object v0, LD3/S;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, LD3/S;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x2

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method private final V0()Z
    .locals 4

    sget-object v0, LD3/S;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, LD3/S;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method


# virtual methods
.method public P(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LD3/S;->P0(Ljava/lang/Object;)V

    return-void
.end method

.method public P0(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, LD3/S;->U0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-static {v0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object v0

    iget-object v1, p0, LI3/B;->h:Ll3/e;

    invoke-static {p1, v1}, LD3/D;->a(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, LI3/k;->c(Ll3/e;Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final T0()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, LD3/S;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LD3/x0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/z;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast v0, LD3/z;

    iget-object v0, v0, LD3/z;->a:Ljava/lang/Throwable;

    throw v0
.end method
