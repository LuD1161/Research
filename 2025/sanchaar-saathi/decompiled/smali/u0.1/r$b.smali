.class public final Lu0/r$b;
.super Lu0/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/r;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lu0/o;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lu0/r;


# direct methods
.method public constructor <init>(Lu0/r;)V
    .locals 0

    iput-object p1, p0, Lu0/r$b;->c:Lu0/r;

    invoke-direct {p0}, Lu0/j$a;-><init>()V

    return-void
.end method

.method public static synthetic I(Lu0/r;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lu0/r$b;->J(Lu0/r;[Ljava/lang/String;)V

    return-void
.end method

.method public static final J(Lu0/r;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tables"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu0/r;->e()Lu0/o;

    move-result-object p0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu0/o;->j([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public p([Ljava/lang/String;)V
    .locals 3

    const-string v0, "tables"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/r$b;->c:Lu0/r;

    invoke-virtual {v0}, Lu0/r;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lu0/r$b;->c:Lu0/r;

    new-instance v2, Lu0/s;

    invoke-direct {v2, v1, p1}, Lu0/s;-><init>(Lu0/r;[Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
