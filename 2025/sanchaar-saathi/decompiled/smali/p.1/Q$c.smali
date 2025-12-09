.class public Lp/Q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lp/Q;


# direct methods
.method public constructor <init>(Lp/Q;)V
    .locals 0

    iput-object p1, p0, Lp/Q$c;->e:Lp/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lp/Q$c;->e:Lp/Q;

    invoke-virtual {v0}, Lp/Q;->r()V

    return-void
.end method
