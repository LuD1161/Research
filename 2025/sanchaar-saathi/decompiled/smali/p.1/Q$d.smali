.class public Lp/Q$d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lp/Q;


# direct methods
.method public constructor <init>(Lp/Q;)V
    .locals 0

    iput-object p1, p0, Lp/Q$d;->a:Lp/Q;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lp/Q$d;->a:Lp/Q;

    invoke-virtual {v0}, Lp/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp/Q$d;->a:Lp/Q;

    invoke-virtual {v0}, Lp/Q;->a()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lp/Q$d;->a:Lp/Q;

    invoke-virtual {v0}, Lp/Q;->dismiss()V

    return-void
.end method
