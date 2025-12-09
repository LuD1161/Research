.class public final LQ0/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ0/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)LQ0/k;
    .locals 1

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQ0/k$a;

    invoke-direct {v0, p1}, LQ0/k$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, LQ0/u$a;->a()LQ0/u;

    move-result-object p1

    check-cast p1, LQ0/k;

    return-object p1
.end method
