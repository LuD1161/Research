.class public abstract Landroidx/lifecycle/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln0/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln0/b;

    invoke-direct {v0}, Ln0/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/F;->a:Ln0/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/F;->a:Ln0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln0/b;->d()V

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/F;->b()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
