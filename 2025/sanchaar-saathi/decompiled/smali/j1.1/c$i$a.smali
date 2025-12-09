.class public Lj1/c$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c$i;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lj1/c$i;


# direct methods
.method public constructor <init>(Lj1/c$i;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj1/c$i$a;->f:Lj1/c$i;

    iput-object p2, p0, Lj1/c$i$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj1/c$i$a;->f:Lj1/c$i;

    invoke-static {v0}, Lj1/c$i;->d(Lj1/c$i;)LY2/j$d;

    move-result-object v0

    iget-object v1, p0, Lj1/c$i$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
