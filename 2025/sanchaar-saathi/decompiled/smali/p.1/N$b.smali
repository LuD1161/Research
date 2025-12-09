.class public Lp/N$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lp/N;


# direct methods
.method public constructor <init>(Lp/N;)V
    .locals 0

    iput-object p1, p0, Lp/N$b;->e:Lp/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lp/N$b;->e:Lp/N;

    invoke-virtual {v0}, Lp/N;->e()V

    return-void
.end method
