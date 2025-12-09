.class public final Lm3/b$b;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/b;->a(Lu3/p;Ljava/lang/Object;Ll3/e;)Ll3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lu3/p;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll3/e;Ll3/i;Lu3/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lm3/b$b;->i:Lu3/p;

    iput-object p4, p0, Lm3/b$b;->j:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p3}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ln3/d;-><init>(Ll3/e;Ll3/i;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm3/b$b;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lm3/b$b;->h:I

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Lm3/b$b;->h:I

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lm3/b$b;->i:Lu3/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lm3/b$b;->i:Lu3/p;

    invoke-static {p1, v1}, Lv3/z;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/p;

    iget-object v0, p0, Lm3/b$b;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
