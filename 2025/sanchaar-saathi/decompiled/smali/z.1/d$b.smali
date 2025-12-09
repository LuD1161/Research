.class public Lz/d$b;
.super Lz/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic g:Lz/d;


# direct methods
.method public constructor <init>(Lz/d;Lz/c;)V
    .locals 0

    iput-object p1, p0, Lz/d$b;->g:Lz/d;

    invoke-direct {p0}, Lz/b;-><init>()V

    new-instance p1, Lz/j;

    invoke-direct {p1, p0, p2}, Lz/j;-><init>(Lz/b;Lz/c;)V

    iput-object p1, p0, Lz/b;->e:Lz/b$a;

    return-void
.end method
