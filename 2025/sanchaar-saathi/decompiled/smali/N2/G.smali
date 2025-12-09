.class public final LN2/G;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN2/G$a;
    }
.end annotation


# static fields
.field public static c:LN2/G;


# instance fields
.field public final a:Landroid/util/LongSparseArray;

.field public final b:Ljava/util/PriorityQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, LN2/G;->a:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    return-void
.end method

.method public static a()LN2/G;
    .locals 1

    sget-object v0, LN2/G;->c:LN2/G;

    if-nez v0, :cond_0

    new-instance v0, LN2/G;

    invoke-direct {v0}, LN2/G;-><init>()V

    sput-object v0, LN2/G;->c:LN2/G;

    :cond_0
    sget-object v0, LN2/G;->c:LN2/G;

    return-object v0
.end method


# virtual methods
.method public b(LN2/G$a;)Landroid/view/MotionEvent;
    .locals 4

    :goto_0
    iget-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LN2/G;->a:Landroid/util/LongSparseArray;

    iget-object v1, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LN2/G;->a:Landroid/util/LongSparseArray;

    invoke-static {p1}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, LN2/G;->a:Landroid/util/LongSparseArray;

    invoke-static {p1}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v0
.end method

.method public c(Landroid/view/MotionEvent;)LN2/G$a;
    .locals 4

    invoke-static {}, LN2/G$a;->b()LN2/G$a;

    move-result-object v0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v1, p0, LN2/G;->a:Landroid/util/LongSparseArray;

    invoke-static {v0}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p0, LN2/G;->b:Ljava/util/PriorityQueue;

    invoke-static {v0}, LN2/G$a;->a(LN2/G$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
