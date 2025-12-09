.class public final LD3/F$a;
.super Ll3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Ll3/f;->d:Ll3/f$b;

    .line 3
    sget-object v1, LD3/F$a$a;->f:LD3/F$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Ll3/b;-><init>(Ll3/i$c;Lu3/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LD3/F$a;-><init>()V

    return-void
.end method
