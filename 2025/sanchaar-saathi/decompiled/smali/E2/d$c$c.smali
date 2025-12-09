.class public LE2/d$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE2/d$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LE2/d$c;


# direct methods
.method public constructor <init>(LE2/d$c;)V
    .locals 0

    iput-object p1, p0, LE2/d$c$c;->e:LE2/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LE2/d$c$c;->e:LE2/d$c;

    invoke-static {v0}, LE2/d$c;->d(LE2/d$c;)LY2/j$d;

    move-result-object v0

    invoke-interface {v0}, LY2/j$d;->c()V

    return-void
.end method
