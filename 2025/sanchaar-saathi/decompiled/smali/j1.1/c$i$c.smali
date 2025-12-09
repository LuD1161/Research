.class public Lj1/c$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c$i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj1/c$i;


# direct methods
.method public constructor <init>(Lj1/c$i;)V
    .locals 0

    iput-object p1, p0, Lj1/c$i$c;->e:Lj1/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lj1/c$i$c;->e:Lj1/c$i;

    invoke-static {v0}, Lj1/c$i;->d(Lj1/c$i;)LY2/j$d;

    move-result-object v0

    invoke-interface {v0}, LY2/j$d;->c()V

    return-void
.end method
