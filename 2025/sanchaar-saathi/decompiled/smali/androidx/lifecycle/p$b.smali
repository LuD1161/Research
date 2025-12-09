.class public Landroidx/lifecycle/p$b;
.super Landroidx/lifecycle/p$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/p;Landroidx/lifecycle/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/p$b;->e:Landroidx/lifecycle/p;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/p$c;-><init>(Landroidx/lifecycle/p;Landroidx/lifecycle/s;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
