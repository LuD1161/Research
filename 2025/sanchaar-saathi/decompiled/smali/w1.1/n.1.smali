.class public abstract Lw1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/n$a;
    }
.end annotation


# instance fields
.field public final a:[Lu1/c;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>([Lu1/c;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/n;->a:[Lu1/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lw1/n;->b:Z

    iput p3, p0, Lw1/n;->c:I

    return-void
.end method

.method public static a()Lw1/n$a;
    .locals 2

    new-instance v0, Lw1/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw1/n$a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lv1/a$b;LR1/g;)V
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lw1/n;->b:Z

    return v0
.end method

.method public final d()[Lu1/c;
    .locals 1

    iget-object v0, p0, Lw1/n;->a:[Lu1/c;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lw1/n;->c:I

    return v0
.end method
