# SchedulePro - Simple Course Scheduler

A clean, robust scheduling tool for assigning courses to events and rooms.

## Quick Start

1. **Double-click `START.bat`** to open the app in your browser
2. **Load your Excel file** with the "📁 Load Excel File" button

## Excel File Format

Your Excel file should have these **3 tabs**:

### Tab: `Events`
| Column | Example | Description |
|--------|---------|-------------|
| Event_ID | EV001 | Unique identifier |
| Event | Virtual-Feb | Event name |
| First_Event_Day | 2-23-2027 | Start date (MM-DD-YYYY) |
| Last_Event_Day | 2-26-2027 | End date (MM-DD-YYYY) |
| Location | Virtual | Event location |
| Room_Count | 16 | Number of rooms available |
| Hotel_Location | (optional) | Hotel name |
| Total_Days | (optional) | Auto-calculated if empty |
| EarlyBird_End_Date | (optional) | Early bird deadline |
| Notes | (optional) | Any notes |

### Tab: `Courses`
| Column | Example | Description |
|--------|---------|-------------|
| Course_ID | 1641D | Unique identifier |
| Instructor | Annie Sheehan | Instructor name |
| Course_Name | Courageous Sponsorship | Course title |
| Duration_Days | 1 | Length in days (0.5, 1, 2, 3, 4) |
| Topic | Leadership | Category/topic |

### Tab: `Instructor_Away`
| Column | Example | Description |
|--------|---------|-------------|
| Instructor | Lisa Hammer, David Newman | Name(s) - comma-separated OK |
| Unavailable_Start | 1-1-2027 | Start of unavailability (MM-DD-YYYY) |
| Unavailable_End | 1-15-2027 | End of unavailability (MM-DD-YYYY) |

## Workflow

### 1. Load Data
- Click "📁 Load Excel File" and select your `.xlsx` file
- Events appear as cards, Courses appear in the left sidebar

### 2. Select an Event
- Click on an event card header to select it (purple border appears)
- The sidebar will now show which courses have conflicts (⚠️ Away badge)

### 3. Build a Shortlist
- Click courses in the sidebar to add them to the selected event's shortlist
- Shortlisted courses appear at the bottom of the event card
- Courses with instructor conflicts show a warning but can still be added

### 4. Auto-Fill Rooms
- Click **"🔄 Auto-Fill Rooms"** to automatically assign shortlisted courses to rooms
- The algorithm fills rooms for maximum utilization (longest courses first)
- Courses that don't fit remain in the shortlist

### 5. Manual Adjustments
- Click a shortlisted course again to manually assign it to a specific day/room
- Click a course block in the room grid to remove it
- Use **"🗑️ Clear"** to remove all assignments from an event

### 6. Export
- **"📤 Export Schedule"** - Download the schedule as CSV
- **"💾 Save Session"** - Save everything to a JSON file (backup)
- **"📂 Load Session"** - Restore a previous session

## Features

✅ **Clean, white interface** with purple accents  
✅ **Room grid visualization** showing course placements  
✅ **Instructor conflict warnings** (but allows booking)  
✅ **Auto-populate rooms** for maximum utilization  
✅ **Manual adjustments** after auto-fill  
✅ **Full change log** tracking all actions  
✅ **Local storage** - data persists between browser sessions  
✅ **CSV export** for the final schedule  
✅ **JSON session save/load** for full backups  

## Tips

- **Filter courses** by topic or duration using the dropdowns
- **Search courses** by ID, name, or instructor
- **Edit events** by clicking the ✏️ Edit button
- **Add events manually** if needed with "+ Add Event"
- **View all courses** in the "All Courses" tab to see assignments

## Files

- `app.html` - The main application (single file, no dependencies except SheetJS CDN)
- `START.bat` - Quick launcher
- `SIMPLE_README.md` - This file

---

*Built for simplicity and reliability.*
