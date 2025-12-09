.class public final Landroidx/lifecycle/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/v;
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
    invoke-direct {p0}, Landroidx/lifecycle/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/k;
    .locals 1

    invoke-static {}, Landroidx/lifecycle/v;->d()Landroidx/lifecycle/v;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/lifecycle/v;->d()Landroidx/lifecycle/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->i(Landroid/content/Context;)V

    return-void
.end method
