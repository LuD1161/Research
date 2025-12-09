.class public final Landroidx/lifecycle/D$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/l;

.field public final f:Landroidx/lifecycle/g$a;

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/g$a;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/D$a;->e:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/D$a;->f:Landroidx/lifecycle/g$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/D$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/D$a;->e:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/lifecycle/D$a;->f:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->h(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/D$a;->g:Z

    :cond_0
    return-void
.end method
