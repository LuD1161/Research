.class public final Landroidx/lifecycle/B$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/B;-><init>(Lx0/d;Landroidx/lifecycle/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Landroidx/lifecycle/I;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/I;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/B$a;->f:Landroidx/lifecycle/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/C;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/B$a;->f:Landroidx/lifecycle/I;

    invoke-static {v0}, Landroidx/lifecycle/A;->b(Landroidx/lifecycle/I;)Landroidx/lifecycle/C;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/B$a;->a()Landroidx/lifecycle/C;

    move-result-object v0

    return-object v0
.end method
